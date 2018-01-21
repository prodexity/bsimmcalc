class ActivityOrg < ApplicationRecord
  validates :activity, uniqueness: { scope: :org, message: "can only be performed once by an organization" }

  belongs_to :activity
  belongs_to :org
end
