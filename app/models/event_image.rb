class EventImage < ActiveRecord::Base

	attr_accessible :image, :event_id
	belongs_to :product
	mount_uploader :image, ImageUploader

  structure do
    image    :string
    event_id :integer

    timestamps
  end
end

