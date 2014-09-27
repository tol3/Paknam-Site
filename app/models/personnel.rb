class Personnel < ActiveRecord::Base
	attr_accessible :avatar, :name, :officer, :type
	
  structure do
    avatar  :string
    name    :string
    officer :string
    type	:string

    timestamps
  end
end

