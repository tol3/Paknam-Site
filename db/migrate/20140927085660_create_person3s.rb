class CreatePerson3s < ActiveRecord::Migration
  def self.up
    create_table :person3s do |t|
      t.string :avatar 
      t.string :name 
      t.string :officer 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :person3s
  end
end
