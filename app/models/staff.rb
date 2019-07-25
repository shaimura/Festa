class Staff < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :staff_inquirys

  has_many :matchs

  has_many :points

  has_many :orders

  acts_as_paranoid

  validates :name, length:{ in: 1..50 }
  validates :postalcode, presence: true, length:{is:7},format:{with:/\A[0-9]+\z/ ,message:'は数字で入力してください。'}
  validates :telephone, length:{ in: 9..20 },format:{with:/\A[0-9]+\z/ ,message:'は数字で入力してください。'}
  validates :address, presence: true


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


   def self.search_staff_name(search_staff_name)
      if search_staff_name
        Staff.unscoped.where(["name LIKE ?", "%#{search_staff_name}%"])
      else
        Staff.unscoped.all
      end
   end


end
