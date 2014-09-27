class CreateManagers < ActiveRecord::Migration
  def self.up
    create_table :managers do |t|
      t.string :avatar 
      t.string :name 
      t.string :officer 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :managers
  end
end
