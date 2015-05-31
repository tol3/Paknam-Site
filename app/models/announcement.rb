class Announcement < ActiveRecord::Base

  scope :on , where(publish: true).order("created_at desc")

  scope :info , where('category = ? AND publish = ?', "ข่าวประชาสัมพันธ์", true ).reverse_order
  scope :buy , where('category = ? AND publish = ?', "ข่าวจัดซื้อ", true ).reverse_order
  scope :job , where('category = ? AND publish = ?', "ข่าวสมัครงาน", true ).reverse_order

	attr_accessible :title, :category, :file, :content, :publish, :cover

  mount_uploader :file, FileUploader
	mount_uploader :cover, ImageUploader

  structure do
    cover   :string
    title   :string
    category :string
    file    :string
    content :text
    publish :boolean

    timestamps
  end
end

