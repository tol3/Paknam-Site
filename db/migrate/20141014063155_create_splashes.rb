class CreateSplashes < ActiveRecord::Migration
  def self.up
    create_table :splashes do |t|
      t.string :image 
      t.boolean :on 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :splashes
  end
end
