class Announcement < ActiveRecord::Base

	attr_accessible :title, :category, :file, :content, :publish

	mount_uploader :file, FileUploader

  structure do
    title   :string
    category :string
    file    :string
    content :string
    publish :boolean

    timestamps
  end
end

