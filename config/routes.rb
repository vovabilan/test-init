TestHolding::Application.routes.draw do

  devise_for :admins
  devise_for :users
  scope "(:locale)", :locale => /en|uk|ru/ do
    devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'registration', password: 'secret', confirmation: 'verification' }
    devise_for :admins, :controllers => { :sessions => "admins/sessions" }
    get "welcome/index"
    
    resources :companies
    resources :users, only: [:new, :create, :edit]
    resources :wlcome, only: [:new, :create, :destroy, :index]

    root 'welcome#index'
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root to: 'welcome#index'

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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
