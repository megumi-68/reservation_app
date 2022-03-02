class User < ApplicationRecord
  mount_uploader :profileimage, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # attachment :profileimage

  has_many :rooms, dependent: :destroy
  has_many :reservations, dependent: :destroy
  validates :introduce, length: { maximum: 200 } 
end
