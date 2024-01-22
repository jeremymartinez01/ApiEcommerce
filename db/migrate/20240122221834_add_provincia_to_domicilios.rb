class AddProvinciaToDomicilios < ActiveRecord::Migration[7.1]
  def change
    add_column :domicilios, :provincia, :string
  end
end
