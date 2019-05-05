class AddFieldsToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events_tdd_not_done, :starts_at, :datetime
    add_column :events_tdd_not_done, :description, :text
  end
end
