class Person2 < ActiveRecord::Base
  attr_accessible :avatar, :name, :officer

  mount_uploader :avatar, AvatarUploader
  
  structure do
    avatar  :string
    name    :string
    officer :string

    timestamps
  end
end

