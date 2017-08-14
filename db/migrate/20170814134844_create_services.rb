class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :location
      t.integer :years_experience
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
