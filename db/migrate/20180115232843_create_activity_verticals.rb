class CreateActivityVerticals < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_verticals do |t|
      t.integer :activity_id, null: false
      t.integer :vertical_id, null: false
      t.integer :count, null: false

      t.integer :version, null: false
      t.timestamps
    end
  end
end
