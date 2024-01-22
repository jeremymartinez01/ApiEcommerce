class AddTotalToOrdens < ActiveRecord::Migration[7.1]
  def change
    add_column :ordens, :total, :decimal
  end
end
