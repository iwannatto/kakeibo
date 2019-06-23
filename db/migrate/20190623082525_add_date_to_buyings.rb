class AddDateToBuyings < ActiveRecord::Migration[5.1]
  def change
    add_column :buyings, :date, :datetime
  end
end
