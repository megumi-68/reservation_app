class Room < ApplicationRecord
  belongs_to :user #User と Room の一対多
  has_many :reservations, dependent: :destroy
end
