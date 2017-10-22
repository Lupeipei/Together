class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :logo, :eventlogo
  end
end
