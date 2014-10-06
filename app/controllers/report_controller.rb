class ReportController < ApplicationController
  def budget
  	@docs = Document.finance.page(params[:page]).per(10)
  end

  def conference
  	@docs = Document.meeting.page(params[:page]).per(10)
  end

  def show
  	@doc = Document.find(params[:id])
  end
end
