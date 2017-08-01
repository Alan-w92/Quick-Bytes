class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.belongs_to :list

      t.string :name, null: false
      t.string :quantity
      
      t.timestamps
    end
  end
end
