class CreateDetalles < ActiveRecord::Migration[7.1]
  def change
    create_table :detalles do |t|
      t.integer :detid
      t.integer :orden_oid
      t.integer :categoria
      t.integer :producto_pid
      t.integer :cantidad
      t.datetime :fecha

      t.timestamps
    end
  end
end
