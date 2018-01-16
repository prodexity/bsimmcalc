class Vertical < ApplicationRecord
  has_many :activity_verticals
  has_many :activities, through: :activity_verticals
end
