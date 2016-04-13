class TrainingAndSchool < ActiveRecord::Base

		after_create :add_to_product
	
	 def add_to_product
      Product.create( :mmdealer_code => "trainingandschool"+(Product.maximum(:id).next.to_i).to_s,:user_id => self.user_id,
      :store_name => self.store_name,
      :title => self.title,
      :description => self.description,
      :fees => self.fees,
      :period => self.period,
      :school => self.school)
  end	
end
