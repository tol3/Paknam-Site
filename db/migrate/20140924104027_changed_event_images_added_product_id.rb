class ChangedEventImagesAddedProductId < ActiveRecord::Migration
  def self.up
    add_column :event_images, :product_id, :integer
    add_index :event_images, :product_id
  end
  
  def self.down
    remove_column :event_images, :product_id
  end
end
