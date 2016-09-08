class VotesController < ApplicationController




  
  private
  
  def extract_voteable
    resource, id = request.path.split('/')[1,2]

    resource.singularize.classify.constantize.find(id)
  end
end
