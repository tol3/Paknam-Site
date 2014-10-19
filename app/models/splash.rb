class Splash < ActiveRecord::Base

  attr_accessible :title, :image, :on

  mount_uploader :image, SplashUploader

  structure do
  	title :string
    image :string
    on :boolean

    timestamps
  end
end

