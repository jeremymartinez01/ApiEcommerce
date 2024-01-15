class CreateDomicilios < ActiveRecord::Migration[7.1]
  def change
    create_table :domicilios do |t|
      t.integer :did
      t.integer :usuario_id
      t.string :ciudad
      t.string :sector
      t.string :calle_principal
      t.string :calle_secundaria
      t.integer :villa
      t.string :cod_postal

      t.timestamps
    end
  end
end
