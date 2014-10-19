class SplashController < ApplicationController
  def index
  	
  	@splash = Splash.first

  	if @splash.on == true
  		@splash = Splash.first
  		render :layout => false
  	else
  		redirect_to home_path
  	end

  end
end
