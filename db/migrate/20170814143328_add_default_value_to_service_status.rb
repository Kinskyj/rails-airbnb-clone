class AddDefaultValueToServiceStatus < ActiveRecord::Migration[5.0]
  def change
    change_column :services, :status, :boolean, :default => true
  end
end
