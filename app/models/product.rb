class Product < ActiveRecord::Base



  
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  belongs_to :user

  
  # ensure that there are no line items referencing this product
PRODUCTCATEGORY = [

"Apparel-Textiles-Accessories",
"Auto-Transportation",
"Electronics",
"Industrial-Parts-Tools",
"Gifts-Sports-Toys",
"Home-Lights-Construction",
"Health-Beauty",
"Bags-Shoes-Accessories",
"Electrical-Equipment",
"Industrial-Parts-Tools",
"Packaging-Advertising-Office",
"Chemicals-Plastics",

]




  def self.search_with_category(category, title)
      @products = Product.where("category = ? OR title LIKE ?", category, "%"+title.to_s+"%")
  end

  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      errors[:base] << "Line Items present"
      return false
    end
  end
  
end







