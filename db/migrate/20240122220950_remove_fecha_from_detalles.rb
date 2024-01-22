class RemoveFechaFromDetalles < ActiveRecord::Migration[7.1]
  def change
    remove_column :detalles, :fecha
  end
end
