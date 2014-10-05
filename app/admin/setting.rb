ActiveAdmin.register Setting do
	menu :label =>  "ตั้งค่า หน้าแรก", :priority => 8
	actions :all, :except => [:new, :destroy]

	form :html => {:multipart => true} do |f|

		f.inputs "รูปสไลด์" do
		  f.input :slide1, :label => "รูปสไลด์ที่ 1 :", :as => :file, :hint => f.object.slide1.present? \
		    ? f.template.image_tag(f.object.slide1.url(:thumb))
		    : f.template.content_tag(:span, "no image upload yet")

		  f.input :slide2, :label => "รูปสไลด์ที่ 2 :", :as => :file, :hint => f.object.slide2.present? \
		    ? f.template.image_tag(f.object.slide2.url(:thumb))
		    : f.template.content_tag(:span, "no image upload yet")

		  f.input :slide3, :label => "รูปสไลด์ที่ 3 :", :as => :file, :hint => f.object.slide3.present? \
		    ? f.template.image_tag(f.object.slide3.url(:thumb))
		    : f.template.content_tag(:span, "no image upload yet")
		end

		f.inputs "ข้อความสไลด์" do
		  f.input :content, :label => "ข้อความสไลด์"
		end

		f.actions
	end

	index :title => "ตั้งค่า หน้าแรก" do
	    selectable_column

	    column "รูปสไลด์ที่ 1" do |p|
	      image_tag(p.slide1.url(:thumb))
	    end

	    column "รูปสไลด์ที่ 2" do |p|
	      image_tag(p.slide2.url(:thumb))
	    end

	    column "รูปสไลด์ที่ 3" do |p|
	      image_tag(p.slide3.url(:thumb))
	    end

	    column "ข้อความสไลด์", :sortable => :title do |p|
	      p.content.truncate(70)
	    end

	    actions
	end

end
