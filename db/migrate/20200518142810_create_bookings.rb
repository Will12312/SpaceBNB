class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|

      t.references :user, foreign_key: true
      t.references :travel, foreign_key: true
      t.timestamps
    end
  end
end
