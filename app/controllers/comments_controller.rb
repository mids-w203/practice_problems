class CommentsController < ApplicationController
    def create 
        @problem = Problem.find(params[:problem_id])
        @comment = @problem.comments.new(comment_params)
        if @comment.save
            # if @comment.parent
            #     CommentMailer.reply_email(@comment).deliver_now
            # end
            redirect_to request.referer
        end
    end    


    private 

    def comment_params 
        params.require(:comment).permit(:body, :name, :parent_id, :email)
    end
end
