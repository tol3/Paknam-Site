class Setting < ActiveRecord::Base

	attr_accessible :slide1, :slide2, :slide3, :content

  	mount_uploader :slide1, ImageUploader
  	mount_uploader :slide2, ImageUploader
  	mount_uploader :slide3, ImageUploader


  structure do
    slide1  :string
    slide2  :string
    slide3  :string
    content :string

    timestamps
  end
end

