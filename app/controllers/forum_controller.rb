class ForumController < ApplicationController
  def index
  	@docs = Document.forum
  end

  def show
  	@doc = Document.find(params[:id])
  end

end
