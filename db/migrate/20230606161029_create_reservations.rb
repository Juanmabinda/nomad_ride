class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :finish_date
      t.references :user, null: false, foreign_key: true
      t.references :caravan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
