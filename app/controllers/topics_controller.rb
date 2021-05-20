class TopicsController < ApplicationController
  before_action :logged_in_user
  before_action :instructor_user

      def create
        @categories = Category.all
        @category = Category.find(params[:topic][:category_id])
        @topic = @category.topics.new(topic_params)
        if @topic.save
          redirect_to @category
        else
          render 'new'
        end
      end
    
      def edit
        @topic = Topic.find(params[:id]) 
      end
      
      def new
        @categories = Category.all
        @category = Category.find(params[:category_id])
        @topic = @category.topics.new
      end
    
      def update
        @topic = Topic.find(params[:id])
        if @topic.update(topic_params)
          redirect_to @topic.category
        else
          render 'edit'
        end
      end
    
      def destroy
        @topic = Topic.find(params[:id])
        @topic.destroy
        redirect_to @topic.category
      end
    
      private
    
      def topic_params
        params.require(:topic).permit(:title, :index, :category_id)
      end
end
