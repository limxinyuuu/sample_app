class BlogpostsController < ApplicationController
  def index
    #@blogposts = Blogpost.all
    @blogposts = Blogpost.paginate(page: params[:page], per_page: 5)
    @blogpost = Blogpost.new
  end

  def create
      @blogpost = Blogpost.new(blogpost_params)
      if @blogpost.save
        flash[:ok] = "Message saved!"
        redirect_to '/blogposts'
        #redirect_to('/blogposts', :notice => "Message sent ....")
      else
        flash[:error] = "Failed. Please fill in both fields."
        #render 'error'
        #redirect_to :back
        redirect_to '/blogposts'
      end
    end

  #def new
  #  @blogpost = Blogpost.new
  #end

  def destroy
  end

  private

    def blogpost_params
      params.require(:blogpost).permit(:name, :content)
    end

end
