class Org < ApplicationRecord
  has_many :org_users, dependent: :destroy
  has_many :users, through: :org_users

  has_many :activity_orgs, dependent: :destroy
  has_many :activities, through: :activity_orgs
end
