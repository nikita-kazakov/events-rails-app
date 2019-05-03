class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events_tdd_not_done do |t|
      t.string :title
      t.string :location
      t.decimal :price

      t.timestamps
    end
  end
end
