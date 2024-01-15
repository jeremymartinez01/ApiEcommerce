class CreateMetodoPagos < ActiveRecord::Migration[7.1]
  def change
    create_table :metodo_pagos do |t|
      t.integer :mpid
      t.string :metodo

      t.timestamps
    end
  end
end
