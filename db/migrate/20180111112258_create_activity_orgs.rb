class CreateActivityOrgs < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_orgs do |t|
      t.integer :activity_id, null: false
      t.integer :org_id, null: false
      t.boolean :answer, null: false
      t.timestamps
    end

    add_index :activity_orgs, [:activity_id, :org_id], unique: true
  end
end
