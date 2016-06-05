class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable

  has_many :conversations, :foreign_key => :sender_id
  has_many :comments

   before_save :ensure_authentication_token

 

    def self.from_omniauth_user(auth)
		  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
		    user.email = auth.info.email
		    user.password = Devise.friendly_token[0,20]
		  end
		end



  
end



