class Activity < ApplicationRecord
	belongs_to :practice
	belongs_to :domain
  has_many :activity_orgs
  has_many :orgs, through: :activity_orgs
end
