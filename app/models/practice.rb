class Practice < ApplicationRecord
  validates :title, uniqueness: { scope: :version, message: "should be added only once" }
  validates :short, uniqueness: { scope: :version, message: "should be added only once" }

  belongs_to :domain
  has_many :activities, dependent: :destroy
end
