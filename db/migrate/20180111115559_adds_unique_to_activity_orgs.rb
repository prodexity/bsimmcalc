class AddsUniqueToActivityOrgs < ActiveRecord::Migration[5.1]
  def change
    add_index :activity_orgs, [:activity_id, :org_id], unique: true
  end
end
