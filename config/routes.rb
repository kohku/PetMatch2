Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/create'

  get 'users/update'

  get 'users/destroy'

  get 'user/index'

  get 'user/show'

  get 'user/new'

  get 'user/edit'

  get 'user/create'

  get 'user/update'

  get 'user/destroy'

  devise_for :users, :path => 'account',
      :path_names => { :sign_in => 'login', :sign_out =>  'logout'},
      :controllers => { :omniauth_callbacks => 'callbacks'}

  scope "/admin" do
    resources :users do
      collection do
        get 'all_roles'
      end
    end
  end

  resources :pets

  resources "pet-types", :controller => :pet_types, :as => :pet_types, shallow: true do

    # Shallow nesting. Generate colleciton actions scoped under the parent.
    resources "pet-breeds", :controller => :pet_breeds, :as => :pet_breeds
  end

  resources :pages
  
  root 'pages#home'

  #get 'auth/:provider/callback', to: 'session#create'

  #get 'auth/:provider/failure', to: 'session#failure'

  #delete '/logout', to: 'session#destroy'
   
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
