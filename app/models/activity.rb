class Activity < ApplicationRecord
  validates :bsid, uniqueness: { scope: :version, message: "should be added only once" }
  validates :title, uniqueness: { scope: :version, message: "should be added only once" }

  belongs_to :practice
  has_one :domain, through: :practice

  has_many :activity_orgs, dependent: :destroy
  has_many :orgs, through: :activity_orgs

  has_many :activity_verticals, dependent: :destroy
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
