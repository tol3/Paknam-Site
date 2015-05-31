class ChangedDocumentsAddedCover < ActiveRecord::Migration
  def self.up
    add_column :documents, :cover, :string
  end
  
  def self.down
    remove_column :documents, :cover
  end
end
