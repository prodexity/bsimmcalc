class Org < ApplicationRecord
  has_many :org_users, dependent: :destroy
  has_many :users, through: :org_users

  has_many :activity_orgs, dependent: :destroy
  has_many :activities_answered, # Activities for which the Org provided an answer
           through: :activity_orgs,
           class_name: "Activity",
           source: :activity
  has_many :activities_performed, # Activities that the Org performs
           -> { where('activity_orgs.answer = ?', 1) },
           through: :activity_orgs,
           class_name: "Activity",
           source: :activity
  has_many :activities_not_performed, # Activities that the Org does not perform
           -> { where('activity_orgs.answer = ?', 0) },
           through: :activity_orgs,
           class_name: "Activity",
           source: :activity
end
