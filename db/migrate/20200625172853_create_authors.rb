class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :role
      t.string :avatar
      t.string :location

      t.timestamps
    end
  end
end
