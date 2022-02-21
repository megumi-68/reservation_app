class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :start_day, presence: true
  validates :end_day, presence: true

  validate :start_end_check
  validate :date_before_start

  def start_end_check
    errors.add(:end_day, "は開始日以降の日を登録してください") unless
    self.start_day < self.end_day 
  end
  
  def date_before_start
    errors.add(:start_day, "は今日以降のものを選択してください") if start_day < Date.today
  end
end
