class AddIdMetodoPagos < ActiveRecord::Migration[7.1]
  def change
    remove_column :metodo_pagos, :id
    remove_column :metodo_pagos, :mpid
    add_column :metodo_pagos, :mpid, :integer, primary_key: true
  end
end
