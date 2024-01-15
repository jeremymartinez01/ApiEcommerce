class CreateUsuarios < ActiveRecord::Migration[7.1]
  def change
    create_table :usuarios do |t|
      t.integer :uid
      t.string :nombre
      t.string :apellido
      t.string :user
      t.string :password
      t.string :cedula
      t.string :telefono
      t.string :correo

      t.timestamps
    end
  end
end
