class AddConstraints < ActiveRecord::Migration
  def change
    change_column :inventories, :title, :string, null: false
    change_column :inventories, :description, :string, null: false
    change_column :inventories, :quantity, :integer, null: false
  end
end
