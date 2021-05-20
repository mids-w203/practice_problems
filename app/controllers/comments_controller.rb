class CommentsController < ApplicationController
    before_action :logged_in_user

    def create 
        @problem = Problem.find(params[:problem_id])
        @comment = @problem.comments.new(comment_params)
        @comment.user = current_user
        if @comment.save
            # if @comment.parent
            #     CommentMailer.reply_email(@comment).deliver_now
            # end
            redirect_to request.referer
        end
    end    


    private 

    def comment_params 
        params.require(:comment).permit(:body, :parent_id)
    end
end
