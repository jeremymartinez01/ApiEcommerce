class AddIdProductos < ActiveRecord::Migration[7.1]
  def change
    remove_column :productos, :id
    remove_column :productos, :pid
    add_column :productos, :pid, :integer, primary_key: true
  end
end
