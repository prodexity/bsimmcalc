class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.integer :practice_id, null: false
      t.string :title, null: false
      t.timestamps
    end
  end
end
