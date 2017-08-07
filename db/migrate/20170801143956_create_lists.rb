class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.belongs_to :user

      t.string :recipe_name, null: false
      t.string :ingredient, null: false

      t.timestamps
    end
  end
end
