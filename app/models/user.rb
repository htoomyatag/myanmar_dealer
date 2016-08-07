class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable

  has_many :conversations, :foreign_key => :sender_id
  has_many :comments

  #before_save :ensure_authentication_token
  # test above code with phone login


 



  
end



