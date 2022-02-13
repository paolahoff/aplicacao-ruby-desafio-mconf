class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :genre
      t.string :author
      t.integer :yearpub
      t.text :review
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
