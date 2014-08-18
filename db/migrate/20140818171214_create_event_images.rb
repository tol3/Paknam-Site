class CreateEventImages < ActiveRecord::Migration
  def self.up
    create_table :event_images do |t|
      t.string :image 
      t.integer :event_id 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :event_images
  end
end
