class AddIdDetalle < ActiveRecord::Migration[7.1]
  def change
    remove_column :detalles, :id
    remove_column :detalles, :detid
    add_column :detalles, :detid, :integer, primary_key: true
  end
end
