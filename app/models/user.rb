class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable

  has_many :conversations, :foreign_key => :sender_id
  has_many :comments

  #before_save :ensure_authentication_token
  # test above code with phone login
  has_attached_file :personal_nrc_front, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :personal_nrc_front, content_type: /\Aimage\/.*\Z/

  has_attached_file :personal_nrc_back, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :personal_nrc_back, content_type: /\Aimage\/.*\Z/

  has_attached_file :retail_nrc_front, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :retail_nrc_front, content_type: /\Aimage\/.*\Z/

  has_attached_file :retail_nrc_back, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :retail_nrc_back, content_type: /\Aimage\/.*\Z/

  has_attached_file :shop_licensce, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :shop_licensce, content_type: /\Aimage\/.*\Z/

  has_attached_file :staff_nrc_front, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :staff_nrc_front, content_type: /\Aimage\/.*\Z/

  has_attached_file :staff_nrc_back, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :staff_nrc_back, content_type: /\Aimage\/.*\Z/

  has_attached_file :company_licensce, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :company_licensce, content_type: /\Aimage\/.*\Z/
 



 



  
end



