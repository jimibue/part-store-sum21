class CreateEngines < ActiveRecord::Migration[6.1]
  def change
    create_table :engines do |t|
      t.string :name
      t.float :horsepower
      t.boolean :electric

      t.timestamps
    end
  end
end
