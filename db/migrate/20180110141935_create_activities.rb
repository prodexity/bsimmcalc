class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.integer :practice_id, null: false
      t.string :bsid, null: false
      t.string :title, null: false
      t.string :descr, null: false
      t.integer :level, null: false

      t.integer :version, null: false
      t.timestamps
    end
  end
end
