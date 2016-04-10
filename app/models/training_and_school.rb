class TrainingAndSchool < ActiveRecord::Base

		after_create :add_to_product
	
	 def add_to_product
      Product.create( :mmdealer_code => "trainingandschool"+(Product.maximum(:id).next.to_i).to_s,:seller_id => self.seller_id,
      :store_name => self.store_name,
      :title => self.title,
      :description => self.description,
      :fees => self.fees,
      :period => self.period,
      :school => self.school)
  end	
end
