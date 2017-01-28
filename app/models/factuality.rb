class Factuality < ApplicationRecord
	validates :mobile_no, length: {maximum: 10},
						  presence: true
	#belongs_to :organisation
end
