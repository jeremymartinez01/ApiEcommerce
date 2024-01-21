class AddIdDomicilios < ActiveRecord::Migration[7.1]
  def change
    remove_column :domicilios, :id
    remove_column :domicilios, :did
    add_column :domicilios, :did, :integer, primary_key: true
  end
end
