class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title 
      t.string :cover 
      t.string :content 
      t.boolean :publish 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :events
  end
end
