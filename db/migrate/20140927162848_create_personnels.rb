class CreatePersonnels < ActiveRecord::Migration
  def self.up
    create_table :personnels do |t|
      t.string :avatar 
      t.string :name 
      t.string :officer 
      t.string :type 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :personnels
  end
end
