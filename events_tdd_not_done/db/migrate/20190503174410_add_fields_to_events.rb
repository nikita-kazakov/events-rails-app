class AddFieldsToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events_tdd_not_done, :description, :text
    add_column :events_tdd_not_done, :starts_at, :datetime
  end
end
