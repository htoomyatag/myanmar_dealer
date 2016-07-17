class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    t.integer :user_id
    t.string :store_name
    t.string   :title
    t.string   :category
    t.text     :ingredient
    t.text     :usage
    t.string   :made_by_country
    t.text     :description
    t.string   :brand
    t.string   :effect
    t.string   :certification
    t.string   :age_group
    t.integer  :price
    t.string   :feature
    t.string   :modal_number
    t.string   :color
    t.integer  :quantity
    t.string   :size
    t.string   :weight
    t.string   :made_with
    t.text     :specification
    t.string   :thickness
    t.string   :operation_system
    t.string   :bag_type
    t.string   :gender
    t.string   :footwear_type
    t.string   :hat_type
    t.string   :power
    t.string   :voltage
    t.string   :dimension
    t.string   :ingredient
    t.text     :caution 
    t.string   :charges
    t.string   :service_category
    t.text     :feature
    t.string   :fees
    t.string   :period
    t.string   :school
    t.string :mmdealer_code
    t.string :avatar1_edit
    t.string :avatar2_edit
    t.string :avatar3_edit
    t.string :avatar4_edit


      t.timestamps null: false
    end
  end
end
