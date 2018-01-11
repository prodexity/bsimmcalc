class Domain < ApplicationRecord
	has_many :practices
	has_many :activities, through: :practices
end
