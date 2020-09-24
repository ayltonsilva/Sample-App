class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :addresses, :address, :address_name
  end
end
