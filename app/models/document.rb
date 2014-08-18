class Document < ActiveRecord::Base

	attr_accessible :title, :category, :file, :publish

	mount_uploader :file, FileUploader
	
  structure do
    title   :string
    category :string
    file    :string
    publish :boolean

    timestamps
  end
end

