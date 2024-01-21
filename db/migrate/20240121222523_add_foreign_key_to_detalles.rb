class AddForeignKeyToDetalles < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :detalles, :ordens, column: :orden_oid, primary_key: "oid"
    add_foreign_key :detalles, :productos, column: :producto_pid, primary_key: "pid"
  end
end
