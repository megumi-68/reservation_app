class AddRoomimageIdToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :roomimage_id, :string
  end
end
