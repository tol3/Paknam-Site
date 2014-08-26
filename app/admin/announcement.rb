ActiveAdmin.register Announcement do
menu false

  scope :all
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

  index do
    selectable_column

    column "title", :sortable => :title do |p|
      link_to p.title, admin_bookfile_path(p)
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
