Mani9912::Application.routes.draw do |map|
  
  
  
  
  resources :instructions

  resources :contacts

  resources :pusheds

  resources :helpers

  resources :users

  resources :callers

  resources :calls
  
  root :to => 'calls#wait_screen'
  

  map.connect 'sms_test', :controller => 'calls', :action => 'sms_test'

  map.connect 'get_instructions/:id', :controller => 'calls' ,:action => 'get_instructions'
  map.wait 'wait_screen', :controller => 'calls', :action => 'wait_screen'
   
  map.emergency 'emergency', :controller => 'calls', :action => 'emergency'

  map.info 'info_screen/:id', :controller => 'calls', :action => 'info_screen'
  map.local_help 'local_help', :controller => 'calls', :action => 'local_help'
  map.push_instructions 'push_instructions', :controller => 'calls', :action => 'push_instructions'

  map.finish 'finish', :controller => 'calls', :action => 'finish'
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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
