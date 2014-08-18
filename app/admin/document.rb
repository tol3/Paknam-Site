ActiveAdmin.register Document do

  scope :all
  # ["หนังสือราชกาล","รายงานประชุม","รายงานการเงิน"]
  scope :'หนังสือราชกาล' do |task|
    task.where('category = ?', "หนังสือราชกาล")
  end
  scope :'รายงานประชุม' do |task|
    task.where('category = ?', "รายงานประชุม")
  end
  scope :'รายงานการเงิน' do |task|
    task.where('category = ?', "รายงานการเงิน")
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

    f.inputs "Book Details" do
      f.input :category, :as => :radio, :label => "Type of product", :collection => ["หนังสือราชกาล","รายงานประชุม","รายงานการเงิน"]
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
