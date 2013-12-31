class ChangeInventoryToQuantity < ActiveRecord::Migration
  def change
    rename_column :inventories, :inventory, :quantity
  end
end
