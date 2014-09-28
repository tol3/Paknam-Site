class Announcement < ActiveRecord::Base

  scope :on , where(publish: true).order("created_at desc")

  scope :info , where('category = ? AND publish = ?', "ข่าวประชาสัมพันธ์", true )
  scope :buy , where('category = ? AND publish = ?', "ข่าวจัดซื้อ", true )
  scope :job , where('category = ? AND publish = ?', "ข่าวสมัครงาน", true )

	attr_accessible :title, :category, :file, :content, :publish

	mount_uploader :file, FileUploader

  structure do
    title   :string
    category :string
    file    :string
    content :text
    publish :boolean

    timestamps
  end
end

