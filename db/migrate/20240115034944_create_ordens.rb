class CreateOrdens < ActiveRecord::Migration[7.1]
  def change
    create_table :ordens do |t|
      t.integer :oid
      t.integer :usuario_uid
      t.integer :mpago_mpid
      t.integer :domicilio_did
      t.datetime :fecha

      t.timestamps
    end
  end
end
