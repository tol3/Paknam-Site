class ChangedSplashesAddedTitle < ActiveRecord::Migration
  def self.up
    add_column :splashes, :title, :string
  end
  
  def self.down
    remove_column :splashes, :title
  end
end
