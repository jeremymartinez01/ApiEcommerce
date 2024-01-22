class RemoveOdenOidFromDetalles < ActiveRecord::Migration[7.1]
  def change
    remove_column :detalles, :orden_oid
  end
end
