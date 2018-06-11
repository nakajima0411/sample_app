class AddImageIdToPost1s < ActiveRecord::Migration[5.2]
  def change
    add_column :post1s, :image_id, :string
  end
end
