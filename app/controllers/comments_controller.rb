class CommentsController < ApplicationController
    before_action :logged_in_user
    before_action :correct_user, only: [:update, :destroy]

    def slack_users
        #client = Slack::Web::Client.new
        #workspace_users = client.users_list.members
        #channel_userIds = client.conversations_members(channel: 'C020SSZH0U8').members
        #puts channel_userIds
        # @users = workspace_users.select{ |u| channel_userIds.include?(u.id) }
        @users = User.all
    end

    def like
        @comment = Comment.find(params[:comment_id])
        @comment.like(current_user)
        redirect_to request.referer
    end
    
    def unlike
        @comment = Comment.find(params[:comment_id])
        @comment.unlike(current_user)
        redirect_to request.referer
    end

    def create 
        @problem = Problem.find(params[:problem_id])
        @comment = @problem.comments.new(comment_params)
        @comment.user = current_user
        if @comment.save
            send_slack_msg(@comment)
            redirect_to problem_url(@comment.problem, comment_id: @comment.id)
        end
    end    

    def update
        if @comment.update(comment_params)
            redirect_to problem_url(@comment.problem, comment_id: @comment.id)
        end
    end

    def destroy
        @comment.destroy
        redirect_to request.referer
    end
    
    
    private 
    
    def comment_params 
        params.require(:comment).permit(:body, :parent_id)
    end
    
    def correct_user
        @comment = Comment.find(params[:id])
        redirect_to root_url unless @comment.user == current_user
    end

    def send_slack_msg(comment)        
        if params[:tags].present?
            tags = "\n "
            params[:tags].split(',').each do |tag|
                tags += "<@#{tag}> "
            end
        end
        
        if comment.parent
            msg = "<@#{comment.parent.user.uid}>: *#{comment.user.full_name}* has posted a <#{url_for comment.problem}?comment_id=#{comment.id}|reply> to a comment."
        else
            msg = "*#{comment.user.full_name}* has posted this <#{url_for comment.problem}?comment_id=#{comment.id}|comment>:"            
        end
        
        client = Slack::Web::Client.new
        client.chat_postMessage(
            channel: ENV['SLACK_CHANNEL'],
            username: 'w203 Bot',
	        blocks: [
                {
                    type: "section",
                    text: {
                        type: "mrkdwn",
                        text: msg,
                    }
                },
                {
			        type: "divider"
		        },
                {
                    type: "section",
                    text: {
                        type: "mrkdwn",
                        text: "#{comment.body} #{tags}",
			    }
		    }
	        ]
        )
    end
end
