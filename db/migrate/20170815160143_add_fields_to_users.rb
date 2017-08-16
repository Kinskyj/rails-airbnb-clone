class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :description, :string
    add_column :users, :language, :string
  end
end
