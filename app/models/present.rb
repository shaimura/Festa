class Present < ApplicationRecord

	acts_as_paranoid

	has_many :orders

	attachment :present_image
end
