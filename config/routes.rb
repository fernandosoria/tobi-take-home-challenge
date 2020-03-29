Rails.application.routes.draw do

  get 'centers' => 'fulfillment_center#index', as: 'centers'

  get 'centers/new' => 'fulfillment_center#new'

  post 'centers/' => 'fulfillment_center#create'

  get 'centers/:id/edit' => 'fulfillment_center#edit', as: 'centers_edit'

  put 'centers/:id' => 'fulfillment_center#update', as: 'centers_update'

  get 'centers/:id' => 'fulfillment_center#show', as: 'centers_show'

  delete 'centers/:id' => 'fulfillment_center#destroy', as: 'centers_delete'

  root 'welcome#index'

  get 'inventory' => 'inventory#index'
  get 'inventory/:id/edit' => 'inventory#edit', as: 'inventory_edit'
  put 'inventory/:id' => 'inventory#update', as: 'inventory_update'

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
