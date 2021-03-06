class Organization < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   acts_as_paranoid


   has_many :festivals

   has_many :organization_inquiries

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

   def self.search_organization_name(search_organization_name)
      if search_organization_name
        Organization.unscoped.where(["name LIKE ?", "%#{search_organization_name}%"])
      else
        Organization.unscoped.all
      end
   end


end
