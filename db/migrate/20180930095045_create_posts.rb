class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :category_id
      t.string :image
      t.text :body

      t.timestamps
    end
  end
end
