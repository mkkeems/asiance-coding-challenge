class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :tags, array: true, default: []
      t.string :image_url
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
