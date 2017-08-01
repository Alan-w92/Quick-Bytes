class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :list

      t.string :description, null: false

      t.timestamps
    end
  end
end
