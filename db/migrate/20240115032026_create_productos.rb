class CreateProductos < ActiveRecord::Migration[7.1]
  def change
    create_table :productos do |t|
      t.integer :pid
      t.integer :usuario_id
      t.integer :categoria
      t.string :nombre
      t.string :descripcion
      t.decimal :precio
      t.string :imagen

      t.timestamps
    end
  end
end
