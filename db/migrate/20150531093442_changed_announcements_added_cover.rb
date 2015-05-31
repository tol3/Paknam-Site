class ChangedAnnouncementsAddedCover < ActiveRecord::Migration
  def self.up
    add_column :announcements, :cover, :string
  end
  
  def self.down
    remove_column :announcements, :cover
  end
end
