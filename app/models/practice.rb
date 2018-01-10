class Practice < ApplicationRecord
	belongs_to :domain
	has_many :activities
end
