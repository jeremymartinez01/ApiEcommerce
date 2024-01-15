class CreateCategoria < ActiveRecord::Migration[7.1]
  def change
    create_table :categoria do |t|
      t.integer :cid
      t.string :nombre

      t.timestamps
    end
  end
end
