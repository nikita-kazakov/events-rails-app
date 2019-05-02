class CreateFastrspecs < ActiveRecord::Migration[5.0]
  def change
    create_table :fastrspecs do |t|
      t.string :name

      t.timestamps
    end
  end
end
