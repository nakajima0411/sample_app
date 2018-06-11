class CreatePost1s < ActiveRecord::Migration[5.2]
  def change
    create_table :post1s do |t|

      t.string :title
      t.string :body
      t.timestamps
    end
  end
end