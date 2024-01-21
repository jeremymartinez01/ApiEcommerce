class RemoveUsuarioIdToProductos < ActiveRecord::Migration[7.1]
  def change
    remove_column :productos, :usuario_id
  end
end
