Rails.application.routes.draw do
  resources :newhomes

  resources :homelands

  resources :landdivisions

  resources :projecttypes

  resources :projects
  root 'welcome#index'

  get '/contact' => 'contact#index', as: 'contact'
  get '/services' => 'services#index', as: 'services'
  get '/aboutus' => 'aboutus#index', as: 'aboutus'
  get '/chinese' => 'chinese#index', as: 'chinese'

  get '/land' => 'projects#land', as: 'land'
  get '/lands/:landid' => 'landdivisions#index', as: 'land_division'

  get '/userlands/:landid' => 'landdivisions#userindex', as: 'userland_division'

  get "/download_pdf" => 'landdivisions#download_pdf'


  get '/homelandpack' => 'projects#homelandpack', as: 'homelandpack'
  get '/userpakages/:packageid' => 'homelands#userindex', as: 'userpakages'  
  get '/pakages/:packageid' => 'homelands#index', as: 'pakages'

  get '/brandnewhome' => 'projects#brandnewhome', as: 'brandnewhome'
  get '/usernewhomes/:homeid' => 'newhomes#userindex', as: 'usernewhomes'
  get '/brandnewhomes/:homeid' => 'newhomes#index', as: 'brandnewhomes'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
