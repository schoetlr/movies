class LinksController < ApplicationController
  
  def new
    @link = Link.new
  end

  def create
    @linkable = extract_linkable
    @link = @linkable.links.build(link_params)
    if current_user
      @link.user_id = current_user.id
    end

    if @link.save
      flash[:success] = "Successfully created link"
      redirect_to movie_path(params[:movie_id])
      #redirect somewhere else once more linkables

    else
      flash[:error] = "Something went wrong"
      redirect_to :back
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def link_params
    params.require(:link).permit(:url, :description)
  end
  
  def extract_linkable
    resource, id = request.path.split('/')[1,2]

    resource.singularize.classify.constantize.find(id)
  end
end
