class Event < ActiveRecord::Base

	attr_accessible :content, :cover, :publish, :title, :event_images_attributes
	has_many :event_images

	accepts_nested_attributes_for :event_images,allow_destroy: true

  structure do
    title   :string
    cover   :string
    content :string
    publish :boolean

    timestamps
  end
end

