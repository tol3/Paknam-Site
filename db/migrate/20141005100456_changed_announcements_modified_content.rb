class ChangedAnnouncementsModifiedContent < ActiveRecord::Migration
  def self.up
    change_column :announcements, :content, :text
  end
  
  def self.down
    change_column :announcements, :content, :string, :limit=>255, :default=>nil
  end
end
