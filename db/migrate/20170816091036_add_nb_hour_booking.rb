class AddNbHourBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :nb_hour, :integer
    remove_column :bookings, :date_end , :date
    change_column :bookings, :date_start, :datetime
  end
end
