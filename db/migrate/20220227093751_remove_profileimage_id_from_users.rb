class RemoveProfileimageIdFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :profileimage_id, :string
  end
end
