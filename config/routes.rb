Rails.application.routes.draw do
  resources :hospitals
  resources :homes
  resources :clinic_images
  devise_for :superadmins
  devise_for :users
  resources :clinic_services
  resources :clinic_accreditations
  resources :accreditations

  resources :procedures
  resources :procedure_categories
  resources :procedure_subcategories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :clinic_staffs

  devise_for :clinic_admins, controllers: { registrations: "clinic_admins/registrations",  sessions: "clinic_admins/sessions", passwords: "clinic_admins/passwords" }
  root 'homes#index'

authenticate :superadmin do
  resources :services
    
end
resources :clinics
resources :superadmins do
    resources :services
end



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
