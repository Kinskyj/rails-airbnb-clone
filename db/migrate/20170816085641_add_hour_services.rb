class AddHourServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :min_hour, :integer
  end
end
