class PagesController < ApplicationController
    before_action :logged_in_user, except: [:ping]

    def preview
        @text = params[:text]
        render inline: "<%= markdown(@text) %>"
    end

    def index
        @categories = Category.all 
    end
end
