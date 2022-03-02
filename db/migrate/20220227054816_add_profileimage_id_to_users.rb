class AddProfileimageIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profileimage_id, :string
  end
end
