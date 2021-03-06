# -*- encoding : utf-8 -*-
Rails.application.routes.draw do

  root 'application#welcome'

  resources :users do
    resources :groups do
      resources :assessments do
        resources :measurements do
          resource :results
        end
      end
      resources :students do
      end
    end
    member do
      put :multi_update
    end
  end

  resources :tests

  post 'login' => 'application#login'
  post 'logout' => 'application#logout'
  post 'accept' => 'application#accept'
  post 'signup' => 'application#signup'
  get 'static' => 'application#static'
  get 'export' => 'application#export'

  get 'schueler' => 'frontend#welcome'
  post 'frontend/login' => 'frontend#login'
  post 'frontend/logout' => 'frontend#logout'
  get 'frontend' => 'frontend#index'
  get 'frontend/:id' => 'frontend#start'
  get 'questionnaires/show' => 'questionnaires#show'
  post 'questionnaires/save_results' => 'questionnaires#save_results'
  resources :materials

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
