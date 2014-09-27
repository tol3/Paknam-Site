class CreatePerson1s < ActiveRecord::Migration
  def self.up
    create_table :person1s do |t|
      t.string :avatar 
      t.string :name 
      t.string :officer 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :person1s
  end
end
