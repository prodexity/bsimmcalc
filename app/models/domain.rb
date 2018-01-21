class Domain < ApplicationRecord
  validates :title, uniqueness: { scope: :version, message: "should be added only once" }

  has_many :practices, dependent: :destroy
  has_many :activities, through: :practices
end
