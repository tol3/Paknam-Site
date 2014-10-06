class Document < ActiveRecord::Base

  scope :on, where(publish: true).order("created_at desc")

  scope :forum, where('category = ? AND publish = ?', "หนังสือราชการ", true ).reverse_order
  scope :meeting, where('category = ? AND publish = ?', "รายงานประชุม", true ).reverse_order
  scope :finance, where('category = ? AND publish = ?', "รายงานการเงิน", true ).reverse_order
  

  attr_accessible :title, :category, :file, :publish

  mount_uploader :file, FileUploader
	
  structure do
    title   :string
    category :string
    file    :string
    publish :boolean

    timestamps
  end
end

