class BlogpostsController < ApplicationController
  def index
    #@blogposts = Blogpost.all
    @blogposts = Blogpost.paginate(page: params[:page], per_page: 5)
  end
end
