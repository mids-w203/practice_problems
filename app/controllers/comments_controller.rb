class CommentsController < ApplicationController
    before_action :logged_in_user
    before_action :correct_user, only: [:update, :destroy]

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
            # if @comment.parent
            #     CommentMailer.reply_email(@comment).deliver_now
            # end
            redirect_to request.referer
        end
    end    

    def update
        if @comment.update(comment_params)
            redirect_to request.referer
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
end
