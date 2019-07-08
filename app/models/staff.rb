class Staff < ApplicationRecord

	acts_as_paranoid

	has_many :orders

	belongs_to :user

end
