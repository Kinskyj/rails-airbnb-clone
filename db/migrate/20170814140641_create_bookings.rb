class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :date_start
      t.date :date_end
      t.references :user, foreign_key: true
      t.references :service, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
