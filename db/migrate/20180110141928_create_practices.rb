class CreatePractices < ActiveRecord::Migration[5.1]
  def change
    create_table :practices do |t|
      t.integer :domain_id, null: false
      t.string :title, null: false
      t.timestamps
    end
  end
end
