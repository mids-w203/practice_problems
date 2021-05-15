class CommentsController < ApplicationController
    def create 
        @problem = Problem.find(params[:problem_id])
        @comment = @problem.comments.new(comment_params)
        if @comment.save
            redirect_to request.referer
        end
    end    


    private 

    def comment_params 
        params.require(:comment).permit(:body, :name, :parent_id)
    end
end
