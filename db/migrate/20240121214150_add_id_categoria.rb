class AddIdCategoria < ActiveRecord::Migration[7.1]
  def change
    remove_column :categoria, :id
    remove_column :categoria, :cid
    add_column :categoria, :cid, :integer, primary_key: true
  end
end
