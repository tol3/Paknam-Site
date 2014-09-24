class ChangedEventsModifiedContent < ActiveRecord::Migration
  def self.up
    change_column :events, :content, :text
  end
  
  def self.down
    change_column :events, :content, :string, :limit=>255, :default=>nil
  end
end
