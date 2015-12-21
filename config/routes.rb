Rails.application.routes.draw do
  resources :carts
  get 'add_to_cart' => 'carts#_cart'

  resources :line_items
  get 'my_items' => 'line_items#my_items'
  


  resources :orders
  get 'my_order' => 'orders#my_order'

  resources :products
  get 'my_product' => 'products#my_product', :as => :my_product


  resources :stores
  devise_for :buyers, :controllers => {:sessions => "buyers/sessions", :registrations => "buyers/registrations"}
  devise_for :sellers, :controllers => {:sessions => "sellers/sessions", :registrations => "sellers/registrations"}
  resources :buyers
  resources :sellers
  resources :fashions
  resources :fronts
  root 'fronts#home'

 get 'home' => 'fronts#home'
 get 'about' => 'fronts#about'
 get 'cart' => 'fronts#cart'
 get 'category' => 'fronts#category'
 get 'category_list' => 'fronts#category_list'
 get 'compare' => 'fronts#compare'
 get 'contact' => 'fronts#contact'
 get 'login' => 'fronts#login'
 get 'product' => 'fronts#product'
 get 'product_full' => 'fronts#product_full'
 get 'register' => 'fronts#register'
 get 'check_out' => 'fronts#check_out'
 get 'thanks_you' => 'fronts#thanks_you'
 get 'check_out_as_guest' => 'fronts#check_out_as_guest'

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
