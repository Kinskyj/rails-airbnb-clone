class AddStatusToService < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :status, :boolean
  end
end
