ActiveAdmin.register Splash do
menu :label =>  "Splash Screen"
config.batch_actions = false
actions :all, :except => [:new, :destroy]

	index :title => "Splash"  do
		column "Image", :image, :max_width => "300px" do |p|
		  image_tag(p.image, :class => "adminimg")
		end
		column "title", :sortable => :title do |p|
		  link_to p.title, admin_splash_path(p)
		end
		column "Status", :on do |p|
		  status_tag (p.on ? "On" : "Off"), (p.on ? :ok : :error)
		end
		actions
	end
end
