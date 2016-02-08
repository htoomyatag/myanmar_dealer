Rails.application.routes.draw do
  resources :services
  resources :training_and_schools
  resources :sports
  resources :toys
  resources :gifts
  resources :car_accessories
  resources :motorcycle_accessories
  resources :machines
  resources :instruments
  resources :equipment
  resources :bath_supplies
  resources :makeup_and_skincares
  resources :beauty_equipments
  resources :medicines
  resources :home_appliances
  resources :computers
  resources :telephone_accessories
  resources :telephone_accessories
  resources :electrical_equipments
  resources :fashion_hats
  resources :fashion_footwears
  resources :fashion_bags
  resources :fashion_accessories
  resources :fashion_clothings
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
 get 'product_full/:id' => 'fronts#product_full' , :as => :product_full
 get 'register' => 'fronts#register'
 get 'check_out' => 'fronts#check_out'
 get 'thanks_you' => 'fronts#thanks_you'
 get 'check_out_as_guest' => 'fronts#check_out_as_guest'
 get 'product_by_category' => 'fronts#product_by_category'

 # sell product page
  get 'product_bath_supplies' => 'bath_supplies#product_bath_supplies', :as => :product_bath_supplies
  
 get 'product_beauty_equipments' => 'beauty_equipments#product_beauty_equipments', :as => :product_beauty_equipments
   
 get 'product_car_accessories' => 'car_accessories#product_car_accessories', :as => :product_car_accessories
    
 get 'product_computers' => 'computers#product_computers', :as => :product_computers
 
 get 'product_electrical_equipments' => 'electrical_equipments#product_electrical_equipments', :as => :product_electrical_equipments

 get 'product_equipments' => 'equipment#product_equipments', :as => :product_equipments

 get 'product_fashion_accessories' => 'fashion_accessories#product_fashion_accessories', :as => :product_fashion_accessories

 get 'product_fashion_bags' => 'fashion_bags#product_fashion_bags', :as => :product_fashion_bags

 get 'product_fashion_clothings' => 'fashion_clothings#product_fashion_clothings', :as => :product_fashion_clothings

 get 'product_fashion_footwears' => 'fashion_footwears#product_fashion_footwears', :as => :product_fashion_footwears

 get 'product_fashion_hats' => 'fashion_hats#product_fashion_hats', :as => :product_fashion_hats
   
 get 'product_gifts' => 'gifts#product_gifts', :as => :product_gifts

 get 'product_home_appliances' => 'home_appliances#product_home_appliances', :as => :product_home_appliances
  
 get 'product_instruments' => 'instruments#product_instruments', :as => :product_instruments

 get 'product_machines' => 'machines#product_machines', :as => :product_machines
  
 get 'product_makeup_and_skincares' => 'makeup_and_skincares#product_makeup_and_skincares', :as => :product_makeup_and_skincares
   
 get 'product_medicines' => 'medicines#product_medicines', :as => :product_medicines
 
 get 'product_motorcycle_accessories' => 'motorcycle_accessories#product_motorcycle_accessories', :as => :product_motorcycle_accessories
  
 get 'product_services' => 'services#product_services', :as => :product_services
  
 get 'product_sports' => 'sports#product_sports', :as => :product_sports
 
 get 'product_telephone_accessories' => 'telephone_accessories#product_telephone_accessories', :as => :product_telephone_accessories

 get 'product_toys' => 'toys#product_toys', :as => :product_toys
  
 get 'product_training_and_schools' => 'training_and_schools#product_training_and_schools', :as => :product_training_and_schools


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
