class Activity < ApplicationRecord
  belongs_to :practice
  belongs_to :domain
  has_many :activity_orgs
  has_many :orgs, through: :activity_orgs

  has_many :activity_verticals
  has_many :verticals, through: :activity_verticals

  def count_by_vertical(vertical = "Earth")
    v = Vertical.find_by(name: vertical)
    av = ActivityVertical.find_by(activity: self, vertical: v)
    av.nil? ? 0 : av.count
  end

  def count
    count_by_vertical
  end
end
