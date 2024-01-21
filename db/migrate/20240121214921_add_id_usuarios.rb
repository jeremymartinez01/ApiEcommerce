class AddIdUsuarios < ActiveRecord::Migration[7.1]
  def change
    remove_column :usuarios, :id
    remove_column :usuarios, :uid
    add_column :usuarios, :uid, :integer, primary_key: true
  end
end
