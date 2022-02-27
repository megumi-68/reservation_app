class Room < ApplicationRecord
  mount_uploader :roomimage_id, RoomimageUploader
  belongs_to :user #User と Room の一対多
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :introduce, presence: true
  validates :address, presence: true
  validates :price, presence: true, numericality: { less_than_or_equal_to: 1000000, 
                                  greater_than_or_equal_to: 100 }
  validates :image, presence: true

  # attachment :roomimage

  def self.search(keyword)
    where(["roomname like? OR address like? OR roomprofile like?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"])
   end
   
   def self.search(area)
    where(["address like?", "%#{area}%"])
   end
end
