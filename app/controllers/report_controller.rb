class ReportController < ApplicationController
  def budget
  	@docs = Document.finance
  end

  def conference
  	@docs = Document.meeting
  end

  def show
  	@doc = Document.find(params[:id])
  end
end
