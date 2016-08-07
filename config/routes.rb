Rails.application.routes.draw do
 
 
  resources :books
  resources :furnitures
  resources :seller_orders
  resources :hot_items
  resources :admins
  get 'admin_log_in' => "admins#admin_log_in", :as => :admin_log_in
  get 'admin_manage_personal_user' => "admins#admin_manage_personal_user", :as => :admin_manage_personal_user
  get 'admin_manage_retail_user' => "admins#admin_manage_retail_user", :as => :admin_manage_retail_user
  get 'admin_manage_company_user' => "admins#admin_manage_company_user", :as => :admin_manage_company_user
  get 'chat_to_seller' => "admins#chat_to_seller", :as => :chat_to_seller

  resources :comments
  resources :favourites
  resources :user_types

  devise_for :users, :authentication_token => 'authentication_token'
  put 'approve_seller/:id' => 'users#approve_seller', :as => :approve_seller
  put 'unapprove_seller/:id' => 'users#unapprove_seller', :as => :unapprove_seller

  namespace :myapi do
  namespace :v1 do
    devise_scope :user do
      post 'registrations' => 'registrations#create', :as => 'register'
      post 'sessions' => 'sessions#create', :as => 'login'
      delete 'sessions' => 'sessions#destroy', :as => 'logout'
      post 'user_new' => 'registrations#user_new', :as => 'user_new'
      
    end
  end
end




  get 'buyer_sign_up' => 'users#buyer_sign_up', :as => :buyer_sign_up
  get 'seller_sign_up' => 'users#seller_sign_up', :as => :seller_sign_up

  get 'buyer_sign_in' => 'users#buyer_sign_in', :as => :buyer_sign_in
  get 'user_sign_in' => 'users#seller_sign_in', :as => :user_sign_in

  resources :users
  resources :buyer_reports
  get 'my_report' => 'buyer_reports#my_report'

  get 'admin_manage_shop' => 'admins#admin_manage_shop'
  get 'admin_manage_seller' => 'admins#admin_manage_seller'
  get 'admin_manage_buyer' => 'admins#admin_manage_buyer'
  get 'set_today_deal' => 'admins#set_today_deal'
  get 'admin_set_today_deal' => 'admins#admin_set_today_deal'
  get 'admin_manage_product' => 'admins#admin_manage_product'

   get 'admin_view_order_report' => 'admins#admin_view_order_report'
   get 'admin_view_product_report' => 'admins#admin_view_product_report'
   get 'admin_view_user_report' => 'admins#admin_view_user_report'


  resources :apis


  post 'open_new_store' => 'apis#open_new_store', :as => :open_new_store
  get 'seach_from_mobile' => 'apis#seach_from_mobile', :as => :seach_from_mobile
  post 'send_to_web' => 'apis#send_to_web', :as => 'send_to_web'
  get 'seller_buyer_conversation' => 'apis#seller_buyer_conversation', :as => :seller_buyer_conversation
  get 'set_order_status_by_seller' => 'apis#set_order_status_by_seller', :as => :set_order_status_by_seller
  get 'view_shop_licensce' => 'apis#view_shop_licensce', :as => :view_shop_licensce
  get 'order_view_by_seller' => 'apis#order_view_by_seller', :as => :order_view_by_seller
  get 'store_detail_view_by_seller' => 'apis#store_detail_view_by_seller', :as => :store_detail_view_by_seller
  get 'store_detail_view_by_buyer' => 'apis#store_detail_view_by_buyer', :as => :store_detail_view_by_buyer


  get 'my_product_order_list' => 'apis#my_product_order_list', :as => :my_product_order_list
  post 'edit_my_store' => 'apis#edit_my_store', :as => :edit_my_store
  post 'edit_my_product' => 'apis#edit_my_product', :as => :edit_my_product
  get 'order_confirm_list' => 'apis#order_confirm_list', :as => :order_confirm_list
  get 'order_delivery_list' => 'apis#order_delivery_list', :as => :order_delivery_list
  get 'order_completed_list' => 'apis#order_completed_list', :as => :order_completed_list
  get 'order_rejected_list' => 'apis#order_rejected_list', :as => :order_rejected_list
  get 'order_processing_list' => 'apis#order_processing_list', :as => :order_processing_list

  post 'to_send_shipment' => 'apis#to_send_shipment', :as => :to_send_shipment
  get 'store_desc' => 'apis#store_desc', :as => :store_desc
  get 'last_three_json' => 'apis#last_three_json', :as => :last_three_json

  get 'get_store_product' => "apis#get_store_product", :as => :get_store_product
  get 'get_store_product_by_seller' => "apis#get_store_product_by_seller", :as => :get_store_product_by_seller


  post 'to_send_rating' => "apis#to_send_rating", :as => :to_send_rating
  get 'get_rating' => "apis#get_rating", :as => :get_rating

  get 'test_json' => 'apis#test_json', :as => :test_json
  get 'my_big_deals' => 'apis#my_big_deals', :as => :my_big_deals
  get 'my_api_services' => 'apis#my_api_services', :as => :my_api_services
  get 'my_api_training_and_schools' => 'apis#my_api_training_and_schools', :as => :my_api_training_and_schools
  get 'my_api_sports' => 'apis#my_api_sports', :as => :my_api_sports
  get 'my_api_toys' => 'apis#my_api_toys', :as => :my_api_toys
  get 'my_api_gifts' => 'apis#my_api_gifts', :as => :my_api_gifts
  get 'my_api_car_accessories' => 'apis#my_api_car_accessories', :as => :my_api_car_accessories
  get 'my_api_motorcycle_accessories' => 'apis#my_api_motorcycle_accessories', :as => :my_api_motorcycle_accessories
  get 'my_api_machines' => 'apis#my_api_machines', :as => :my_api_machines
  get 'my_api_instruments' => 'apis#my_api_instruments', :as => :my_api_instruments
  get 'my_api_equipment' => 'apis#my_api_equipment', :as => :my_api_equipment
  get 'my_api_bath_supplies' => 'apis#my_api_bath_supplies', :as => :my_api_bath_supplies
  get 'my_api_makeup_and_skincares' => 'apis#my_api_makeup_and_skincares', :as => :my_api_makeup_and_skincares
  get 'my_api_beauty_equipments' => 'apis#my_api_beauty_equipments', :as => :my_api_beauty_equipments
  get 'my_api_medicines' => 'apis#my_api_medicines', :as => :my_api_medicines
  get 'my_api_home_appliances' => 'apis#my_api_home_appliances', :as => :my_api_home_appliances
  get 'my_api_computers' => 'apis#my_api_computers', :as => :my_api_computers
  get 'my_api_telephone_accessories' => 'apis#my_api_telephone_accessories', :as => :my_api_telephone_accessories
  get 'my_api_electrical_equipments' => 'apis#my_api_electrical_equipments', :as => :my_api_electrical_equipments
  get 'my_api_fashion_hats' => 'apis#my_api_fashion_hats', :as => :my_api_fashion_hats
  get 'my_api_fashion_footwears' => 'apis#my_api_fashion_footwears', :as => :my_api_fashion_footwears
  get 'my_api_fashion_bags' => 'apis#my_api_fashion_bags', :as => :my_api_fashion_bags
  get 'my_api_fashion_accessories' => 'apis#my_api_fashion_accessories', :as => :my_api_fashion_accessories
  get 'my_api_fashion_clothings' => 'apis#my_api_fashion_clothings', :as => :my_api_fashion_clothings
  get 'my_api_stores' => 'apis#my_api_stores', :as => :my_api_stores
  post 'get_ip' => 'apis#get_ip', :as => :get_ip

  


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
  get 'my_order_status' => 'orders#my_order_status'

  resources :products
  get 'my_product' => 'products#my_product', :as => :my_product
  get 'my_products' => 'products#my_products', :as => :my_products
  get 'my_sell_product' => 'products#my_sell_product', :as => :my_sell_product
  get 'set_as_bigdeal/:id' => 'products#set_as_bigdeal', :as => :set_as_bigdeal
  

  resources :stores
  get 'dashboard' => 'stores#dashboard', :as => :dashboard



  resources :fashions
  resources :fronts


  get "big_deals" => "fronts#big_deals", :as => :big_deals  

  get "products_by_category" => "fronts#products_by_category", :as => :products_by_category
  get "apply_as_seller/:id" => "fronts#apply_as_seller", :as => :apply_as_seller
  get "unauthorized" => "fronts#unauthorized", :as => :unauthorized
  get "send_to_pusher" => "fronts#send_to_pusher", :as => :send_to_pusher
  get "add_to_favourite" => "fronts#add_to_favourite", :as => :add_to_favourite
  get "search_result" => "fronts#search_result", :as => :search_result
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
 get 'product_full' => 'fronts#product_full' , :as => :product_full
 get 'mobile_product_detail' => 'fronts#mobile_product_detail' , :as => :mobile_product_detail


 get 'register' => 'fronts#register'
 get 'check_out' => 'fronts#check_out'
 get 'thanks_you' => 'fronts#thanks_you'
 get 'check_out_as_guest' => 'fronts#check_out_as_guest'
 get 'product_by_category' => 'fronts#product_by_category'
 get 'my_conversation' => 'fronts#my_conversation'
 
 

 get 'fashion_related' => 'fronts#fashion_related', :as => :fashion_related
 get 'electronics_related' => 'fronts#electronics_related', :as => :electronics_related
 get 'health_beauty_related' => 'fronts#health_beauty_related', :as => :health_beauty_related
 get 'industrial_part' => 'fronts#industrial_part', :as => :industrial_part
 get 'auto_transportation' => 'fronts#auto_transportation', :as => :auto_transportation
 get 'sports_related' => 'fronts#sports_related', :as => :sports_related
 get 'service_related' => 'fronts#service_related', :as => :service_related

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

# full product info
# full product info
 get 'full_productinfo_bath_supplies' => 'fronts#full_productinfo_bath_supplies', :as => :full_productinfo_bath_supplies
  
 get 'full_productinfo_beauty_equipments' => 'fronts#full_productinfo_beauty_equipments', :as => :full_productinfo_beauty_equipments
   
 get 'full_productinfo_car_accessories' => 'fronts#full_productinfo_car_accessories', :as => :full_productinfo_car_accessories
    
 get 'full_productinfo_computers' => 'fronts#full_productinfo_computers', :as => :full_productinfo_computers
 
 get 'full_productinfo_electrical_equipments' => 'fronts#full_productinfo_electrical_equipments', :as => :full_productinfo_electrical_equipments

 get 'full_productinfo_equipments' => 'fronts#full_productinfo_equipments', :as => :full_productinfo_equipments

 get 'full_productinfo_fashion_accessories' => 'fronts#full_productinfo_fashion_accessories', :as => :full_productinfo_fashion_accessories

 get 'full_productinfo_fashion_bags' => 'fronts#full_productinfo_fashion_bags', :as => :full_productinfo_fashion_bags

 get 'full_productinfo_fashion_clothings' => 'fronts#full_productinfo_fashion_clothings', :as => :full_productinfo_fashion_clothings

 get 'full_productinfo_fashion_footwears' => 'fronts#full_productinfo_fashion_footwears', :as => :full_productinfo_fashion_footwears

 get 'full_productinfo_fashion_hats' => 'fronts#full_productinfo_fashion_hats', :as => :full_productinfo_fashion_hats
   
 get 'full_productinfo_gifts' => 'fronts#full_productinfo_gifts', :as => :full_productinfo_gifts

 get 'full_productinfo_home_appliances' => 'fronts#full_productinfo_home_appliances', :as => :full_productinfo_home_appliances
  
 get 'full_productinfo_instruments' => 'fronts#full_productinfo_instruments', :as => :full_productinfo_instruments

 get 'full_productinfo_machines' => 'fronts#full_productinfo_machines', :as => :full_productinfo_machines
  
 get 'full_productinfo_makeup_and_skincares' => 'fronts#full_productinfo_makeup_and_skincares', :as => :full_productinfo_makeup_and_skincares
   
 get 'full_productinfo_medicines' => 'fronts#full_productinfo_medicines', :as => :full_productinfo_medicines
 
 get 'full_productinfo_motorcycle_accessories' => 'fronts#full_productinfo_motorcycle_accessories', :as => :full_productinfo_motorcycle_accessories
  
 get 'full_productinfo_services' => 'fronts#full_productinfo_services', :as => :full_productinfo_services
  
 get 'full_productinfo_sports' => 'fronts#full_productinfo_sports', :as => :full_productinfo_sports
 
 get 'full_productinfo_telephone_accessories' => 'fronts#full_productinfo_telephone_accessories', :as => :full_productinfo_telephone_accessories

 get 'full_productinfo_toys' => 'fronts#full_productinfo_toys', :as => :full_productinfo_toys
  
 get 'full_productinfo_training_and_schools' => 'fronts#full_productinfo_training_and_schools', :as => :full_productinfo_training_and_schools

 match "login_qr_code" => "fronts#login_qr_code", as: :login_qr_code, via: [:get, :post]
 match "access_with_qr" => "fronts#access_with_qr", as: :access_with_qr, via: [:get, :post]

 get "download_app" => "fronts#download_app", as: :download_app

 get 'logging_with_qrcode' => "fronts#logging_with_qrcode", :as => :logging_with_qrcode

 get 'about_add_to_fav' => "fronts#about_add_to_fav", :as => :about_add_to_fav

 get 'about_add_to_cart' => "fronts#about_add_to_cart", :as => :about_add_to_cart

 get 'about_order_trekking' => "fronts#about_order_trekking", :as => :about_order_trekking

 get 'about_make_an_order' => "fronts#about_make_an_order", :as => :about_make_an_order
 
 get 'about_seller_open_shop' => "fronts#about_seller_open_shop", :as => :about_seller_open_shop

 get 'about_seller_manage_shop' => "fronts#about_seller_manage_shop", :as => :about_seller_manage_shop

 get 'about_seller_sell_product' => "fronts#about_seller_sell_product", :as => :about_seller_sell_product

 get 'about_seller_manage_product' => "fronts#about_seller_manage_product", :as => :about_seller_manage_product
 
 get 'about_seller_view_report' => "fronts#about_seller_view_report", :as => :about_seller_view_report

 get 'about_payment' => "fronts#about_payment", :as => :about_payment

 get 'service_charges' => "fronts#service_charges", :as => :service_charges

 get 'delivery_agency' => "fronts#delivery_agency", :as => :delivery_agency

 get 'privacy_policy' => "fronts#privacy_policy", :as => :privacy_policy

 get 'term_condition' => "fronts#term_condition", :as => :term_condition

 get 'set_my_seller' => 'fronts#set_my_seller', :as => :set_my_seller

 get 'chat_with' => 'fronts#chat_with', :as => :chat_with

 get 'not_approve_sorry' => 'fronts#not_approve_sorry', :as => :not_approve_sorry


  resources :conversations do
    resources :messages
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products' => 'catalog#view'

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
