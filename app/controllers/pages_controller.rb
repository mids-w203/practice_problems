class PagesController < ApplicationController
    def index
        @categories = Category.all 
    end
end
