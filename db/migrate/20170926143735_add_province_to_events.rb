class AddProvinceToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :province, :string
  end
end
