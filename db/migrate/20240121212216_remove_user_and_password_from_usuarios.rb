class RemoveUserAndPasswordFromUsuarios < ActiveRecord::Migration[7.1]
  def change
    remove_column :usuarios, :user, :string
    remove_column :usuarios, :password, :string
  end
end
