class CreateBuyings < ActiveRecord::Migration[5.1]
  def change
    create_table :buyings do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
