class AddForeignKeyToOrdens < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :ordens, :usuarios, column: :usuario_uid, primary_key: "uid"
    add_foreign_key :ordens, :metodo_pagos, column: :mpago_mpid, primary_key: "mpid"
    add_foreign_key :ordens, :domicilios, column: :domicilio_did, primary_key: "did"
  end
end
