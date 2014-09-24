class Event < ActiveRecord::Base

  scope :on , where(publish: true).order("created_at desc") 
  
  attr_accessible :content, :cover, :publish, :title, :event_images_attributes
  has_many :event_images

  accepts_nested_attributes_for :event_images,allow_destroy: true

  structure do
    title   :string
    cover   :string
    content :text
    publish :boolean

    timestamps
  end
end

