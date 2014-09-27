class ChangedManagersDeletedParentId < ActiveRecord::Migration
  def self.up
    remove_column :managers, :parent_id
  end
  
  def self.down
    add_column :managers, :parent_id, :integer, :limit=>4, :default=>nil
  end
end
