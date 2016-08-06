class Comment < ActiveRecord::Base
	  belongs_to :user


	  STAR = ["1", "2", "3", "4", "5"]
	  
end
