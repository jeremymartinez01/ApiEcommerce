class AddForeignKeyToProductos < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :productos, :categoria, column: :categoria, primary_key: "cid"
  end
end
