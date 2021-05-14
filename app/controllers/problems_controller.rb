class ProblemsController < ApplicationController
    def show
        @problem = Problem.find(params[:id])
      end
    
      def create
        @problem = Problem.new(problem_params)
        if @problem.save
          redirect_to @problem.category
        else
          render 'new'
        end
      end
    
      def edit
        @problem = Problem.find(params[:id]) 
      end
      
      def new
        @problem = Problem.new
      end
    
      def update
        @problem = Problem.find(params[:id])
        if @problem.update(problem_params)
          redirect_to @problem.category
        else
          render 'edit'
        end
      end
    
      def destroy
        @problem = Problem.find(params[:id])
        @problem.destroy
        redirect_to @problem.category
      end
    
      private
    
      def problem_params
        params.require(:problem).permit(:title, :statement, :solution, :index)
      end
end
