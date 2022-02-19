class Room < ApplicationRecord
  belongs_to :user #User と Room の一対多
end
