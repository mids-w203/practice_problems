class ProblemsController < ApplicationController
  def like
    @problem = Problem.find(params[:problem_id])
    @problem.like
    redirect_to request.referer
  end

  def show
        @problem = Problem.find(params[:id])
      end
    
      def create
        @problem = Problem.new(problem_params)
        if @problem.save
          redirect_to @problem.topic.category
        else
          render 'new'
        end
      end
    
      def edit
        @problem = Problem.find(params[:id]) 
      end
      
      def new
        @topic = Topic.find(params[:topic_id])
        @problem = @topic.problems.new
      end
    
      def update
        @problem = Problem.find(params[:id])
        if @problem.update(problem_params)
          redirect_to @problem.topic.category
        else
          render 'edit'
        end
      end
    
      def destroy
        @problem = Problem.find(params[:id])
        @problem.destroy
        redirect_to @problem.topic.category
      end
    
      private
    
      def problem_params
        params.require(:problem).permit(:title, :statement, :solution, :index, :topic_id)
      end
end
