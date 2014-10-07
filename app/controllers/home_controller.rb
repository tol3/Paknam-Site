class HomeController < ApplicationController
  def info
  end

  def contact
  end

  def index
    @settings = Setting.first

  	@news1 = Announcement.where('category = ? AND publish = ?', "ข่าวประชาสัมพันธ์", true).last
  	@news2 = Announcement.where('category = ? AND publish = ?', "ข่าวจัดซื้อ", true).last
  	@news3 = Announcement.where('category = ? AND publish = ?', "ข่าวสมัครงาน", true).last

  	@doc1 = Document.where('category = ? AND publish = ?', "หนังสือราชการ", true).last
  	@doc2 = Document.where('category = ? AND publish = ?', "รายงานประชุม", true).last
  	@doc3 = Document.where('category = ? AND publish = ?', "รายงานการเงิน", true).last
  end

  def sitemap
  end

  # def download
  #   send_file pdf,
  #   :filename => "แผนพัฒนาสามปี(พ.ศ.2558–2560).pdf",
  #   :type => "application/pdf"
  # end
end
