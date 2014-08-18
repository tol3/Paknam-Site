ActiveAdmin.register Event do

  index do
    selectable_column

    column "Picture", :event_images_id do |p|
      if EventImage.find_by_event_id(p.id) != nil
        image_tag(EventImage.find_by_event_id(p.id).image.url(:thumb))
      else
        "No Picture"
      end
    end

    column "title", :sortable => :title do |p|
      link_to p.title, admin_event_path(p)
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
        row("Content") { resource.content }

        row("Picture") do
          EventImage.find_all_by_event_id(resource.id).each do |a|
            text_node image_tag(a.image.url(:thumb))
            text_node " "
          end
        end

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

    f.inputs "Event Details" do

      f.input :title, :label => "Title :"#,:required => true
      f.input :content, :label => "Content :"#,:required => true
    end

    f.inputs "Event Image" do
      f.has_many :event_images, :allow_destroy => true, :heading => 'Image Upload' do |p|
        p.input :image, :as => :file, :label => "Image", :hint => p.object.image.present? \
        ? p.template.image_tag(p.object.image.url(:thumb))
        : p.template.content_tag(:span, "no image upload yet")
      end
    end

    f.inputs "Publish Content" do
      f.input :publish
    end

    f.actions
  end

end
