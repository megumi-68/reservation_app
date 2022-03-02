class AddUseDayToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :use_day, :integer
  end
end
