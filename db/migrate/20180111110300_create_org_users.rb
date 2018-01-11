class CreateOrgUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :org_users do |t|
      t.integer :user_id, null: false
      t.integer :org_id, null: false

      t.timestamps
    end
  end
end
