ActiveAdmin.register Announcement do
# menu false
 menu :label =>  "ข่าวสารต่าง ๆ", :priority => 2

# title "Hello"

  # scope :all
  
  scope :'ทั้งหมด' do |task|
    task
  end

  # ["หนังสือราชกาล","รายงานประชุม","รายงานการเงิน"]
  scope :'ข่าวประชาสัมพันธ์' do |task|
    task.where('category = ?', "ข่าวประชาสัมพันธ์")
  end
  scope :'ข่าวจัดซื้อ' do |task|
    task.where('category = ?', "ข่าวจัดซื้อ")
  end
  scope :'ข่าวสมัครงาน' do |task|
    task.where('category = ?', "ข่าวสมัครงาน")
  end

  index :title => "ข่าวสารต่าง ๆ"  do
    selectable_column

    column "cover", :cover do |p|
      if p.cover.url != nil
        image_tag(p.cover.url(:thumb))
      else
        "No Picture"
      end
    end

    column "title", :sortable => :title do |p|
      link_to p.title, admin_announcement_path(p)
    end

    column "Category", :category do |p|
      p.category
    end

    column "Publish", :publish do |p|
      status_tag (p.publish ? "Published" : "Not Publish"), (p.publish ? :ok : :error)
    end

    actions
  end

  show do
    panel "Details" do
      attributes_table_for resource do

        row("cover") do
          if resource.cover.url != nil
            image_tag(resource.cover.url(:thumb))
          else
            "No Picture"
          end
        end

        row("Title") { resource.title }
        row("category") { resource.category }

        row("Content") { raw resource.content }

        row("File") { resource.file.url }

        row("Publish") do
          if resource.publish == true
            "Published"
          elsif resource.publish == false
            "Not Publish"
          end
        end

      end
    end
  end

  form :html => {:multipart => true} do |f|

    f.inputs "Cover" do
      f.input :cover, :label => "Cover :"
    end

    f.inputs "News Category" do
      f.input :category, :as => :radio, :label => "Category", :collection => ["ข่าวประชาสัมพันธ์","ข่าวจัดซื้อ","ข่าวสมัครงาน"]
    end

    f.inputs "News Details" do
      f.input :title, :label => "Title :"#,:required => true

      f.input :content, as: :wysihtml5, commands: :all, blocks: :all, :label => false
    end

    f.inputs "News File" do
      f.input :file, :label => "File :"
    end

    f.inputs "Publish Content" do
      f.input :publish
    end

    f.actions
  end

end
