class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :organizationreplies


  acts_as_paranoid

  validates :name,presence: true, length:{ in: 1..50 }




   def organization
   	Organization.unscoped{super}
   end

   def festival
   	Festival.unscoped{super}
   end

   def staff
    Staff.unscoped{super}
   end

   def present
    Present.unscoped{super}
   end


end
