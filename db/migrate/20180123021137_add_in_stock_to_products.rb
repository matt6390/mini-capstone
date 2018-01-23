class AddInStockToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :on_sale, :boolean, default: false
  end
end
