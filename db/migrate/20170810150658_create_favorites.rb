class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.belongs_to :user

      t.string :title, null: false
      t.string :image, null: false
      t.string :serving, null: false
      t.string :calorie, null: false
      t.string :element, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
