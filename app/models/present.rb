class Present < ApplicationRecord

	acts_as_paranoid

	has_many :orders

	attachment :present_image

  validates :use_point, numericality: {greater_than_or_equal_to: 0}


	validates :present_image, presence: true
	validates :present, presence: true



   def staff
   	Staff.unscoped{super}
   end


   def present
    Present.unscoped{super}
   end


end
