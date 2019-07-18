class Organization < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   acts_as_paranoid

   def organization
   	Organization.unscoped{super}
   end

   def festival
   	Festival.unscoped{super}
   end

   has_many :festivals

   has_many :organization_inquiries

end
