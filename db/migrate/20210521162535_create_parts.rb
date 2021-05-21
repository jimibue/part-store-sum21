class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :name
      t.float :price
      t.boolean :in_stock
      t.integer :quantity
      t.belongs_to :engine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
