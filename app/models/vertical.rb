class Vertical < ApplicationRecord
  validates :name, uniqueness: { scope: :version, message: "should be added only once" }

  has_many :activity_verticals, dependent: :destroy
  has_many :activities, through: :activity_verticals
end
