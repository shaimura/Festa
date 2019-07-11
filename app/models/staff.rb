class Staff < ApplicationRecord

	acts_as_paranoid

	has_many :orders

	belongs_to :user

	has_many :matchs

end
