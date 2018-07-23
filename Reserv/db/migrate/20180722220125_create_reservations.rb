class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.time :date
      t.integer :table_num
      t.integer :num_people
      t.string :reserv_code
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
