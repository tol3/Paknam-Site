ActiveAdmin.register Document do
# menu false
menu :label =>  "หนังสือ และ รายงาน", :priority => 3

  # scope :all

  scope :'ทั้งหมด' do |task|
    task
  end
  
  # ["หนังสือราชกาล","รายงานประชุม","รายงานการเงิน"]
  scope :'หนังสือราชการ' do |task|
    task.where('category = ?', "หนังสือราชการ")
  end
  scope :'รายงานประชุม' do |task|
    task.where('category = ?', "รายงานประชุม")
  end
  scope :'รายงานการเงิน' do |task|
    task.where('category = ?', "รายงานการเงิน")
  end

  index :title => "หนังสือ และ รายงาน" do
    selectable_column

    column "cover", :cover do |p|
      if p.cover.url != nil
        image_tag(p.cover.url(:thumb))
      else
        "No Picture"
      end
    end

    column "title", :sortable => :title do |p|
      link_to p.title, admin_document_path(p)
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

    f.inputs "Book Details" do
      f.input :category, :as => :radio, :label => "Type of product", :collection => ["หนังสือราชการ","รายงานประชุม","รายงานการเงิน"]
    end

    f.inputs "Book Details" do
      f.input :title, :label => "Title :"#,:required => true
    end

    f.inputs "Book Image" do
      f.input :file, :label => "File :"
    end

    f.inputs "Publish Content" do
      f.input :publish
    end

    f.actions
  end

end
