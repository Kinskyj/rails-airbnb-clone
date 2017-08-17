class AddFieldsToService < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :equipment, :string
    add_column :services, :food, :string
  end
end
