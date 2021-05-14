class TopicsController < ApplicationController
      def create
        @category = Category.find(params[:category_id])
        @topic = @category.topics.new(topic_params)
        if @topic.save
          redirect_to categories_url
        else
          render 'new'
        end
      end
    
      def edit
        @topic = Topic.find(params[:id]) 
      end
      
      def new
        @topic = Topic.new
      end
    
      def update
        @topic = Topic.find(params[:id])
        if @topic.update(topic_params)
          redirect_to categories_url
        else
          render 'edit'
        end
      end
    
      def destroy
        @topic = Topic.find(params[:id])
        @topic.destroy
        redirect_to categories_url
      end
    
      private
    
      def topic_params
        params.require(:topic).permit(:title, :index)
      end
end
