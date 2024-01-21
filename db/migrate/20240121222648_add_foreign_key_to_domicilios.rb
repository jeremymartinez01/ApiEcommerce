class AddForeignKeyToDomicilios < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :domicilios, :usuarios, column: :usuario_id, primary_key: "uid"
  end
end
