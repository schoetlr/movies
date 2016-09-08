class LinksController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  private

  def extract_linkable
    resource, id = request.path.split('/')[1,2]

    resource.singularize.classify.constantize.find(id)
  end
end
