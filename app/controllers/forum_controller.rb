class ForumController < ApplicationController
  def index
  	@docs = Document.forum.page(params[:page]).per(10)
  end

  def show
  	@doc = Document.find(params[:id])
  end

end
