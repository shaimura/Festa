require 'date'

class Festival < ApplicationRecord



	acts_as_paranoid

	belongs_to :organization

	attachment :fes_image

	geocoded_by :address, latitude: :latitude, longitude: :longitude

	after_validation :geocode, if: :address_changed?

	has_many :informations, dependent: :destroy

	has_many :matchs, dependent: :destroy

	has_many :points



	enum area:{北海道: 0, 東北: 1, 関東: 2, 中部: 3, 近畿: 4, 中国: 5, 四国: 6, 沖縄: 7}

	enum staff_status:{募集中: 0, 募集していません: 1}


	validates :name, length:{ in: 1..100 }
	validates :traffic, presence: true
	validates :profile, presence: true, length: { maximum: 500 }
	validates :date, presence: true
	validates :fes_image, presence: true
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



	def matched_by?(staff)
		matchs.where(staff_id: staff).exists?
	end



	# 名前検索機能
	def self.search_name(search_name)
		if search_name
			Festival.where(["name LIKE ?", "%#{search_name}%"])
		else
			Festival.all
		end
	end

	#地域検索機能
	def self.search_area(search_area)
		if search_area
			Festival.where("area LIKE ?", "#{search_area}")
		else
			Festival.all
		end
	end


	#開催月検索機能
	def self.search_date(search_date)

		month = Date.today.month
		year = Date.today.year
		day = 1
		search_month = search_date.to_i



		if search_month < month
				year += 1
				date = Date.new(year,search_month,day)
				Festival.where(date: date.in_time_zone.all_month)

		elsif search_month == month
				Festival.where(date: (Date.today)..(Date.today.end_of_month))

		else
			date = Date.new(year,search_month,day)
			Festival.where(date: date.in_time_zone.all_month)
		end



	end

	#管理者側の検索機能
	def self.admin_search_name(admin_search_name)
		if admin_search_name
			Festival.where(["name LIKE ?", "%#{admin_search_name}%"])
		else
			Festival.all
		end
	end


end
