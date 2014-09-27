PaknamSiteV2::Application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root :to => 'home#index'

  get "chart/manager"
  get "chart/councillor"
  get "chart/clerk"
  get "chart/competent"

  get "forum/index"
  get "forum/show"
  get "event/index"
  get "event/show"
  get "report/budget"
  get "report/conference"
  get "report/show"
  get "news/info"
  get "news/pucchasing"
  get "news/recruit"
  get "news/show"
  get "home/info"
  get "home/contact"
  get "home/index"
  get "home/sitemap"

# home
  match "contact" => "home#contact"
  match "vision" => "home#info"
  match "sitemap" => "home#sitemap"
# 

# news
  match "information" => "news#info"
  match "purchasing" => "news#pucchasing"
  match "recruit" => "news#recruit"
  match "newss" => "news#show"
#

# project
  match "plan" => "planproject#plan"
  match "majorproject" => "planproject#majorproject"
  match "strategy" => "planproject#strategy"
# 

# report
  match "budget" => "report#budget"
  match "conference" => "report#conference"
  match "reports" => "report#show"
# 

# event
  match "events" => "event#index"
  match "events" => "event#show"
#

# forum
  match "forums" => "forum#index"
  match "forums" => "forum#show"
#

# chart
  match "organize_1" => "chart#clerk"
  match "organize_2" => "chart#manager"
  match "organize_3" => "chart#councillor"
  match "organize_4" => "chart#competent"
# 

  resources :event
  resources :forum
  resources :report
  resources :news
  resources :announcement


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
