class AddItems < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :title
      t.string :description
      t.integer :inventory

      t.timestamps
    end
  end
end
