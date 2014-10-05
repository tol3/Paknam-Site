class CreateSettings < ActiveRecord::Migration
  def self.up
    create_table :settings do |t|
      t.string :slide1 
      t.string :slide2 
      t.string :slide3 
      t.string :content 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :settings
  end
end
