class AddIdOrdens < ActiveRecord::Migration[7.1]
  def change
    remove_column :ordens, :id
    remove_column :ordens, :oid
    add_column :ordens, :oid, :integer, primary_key: true
  end
end
