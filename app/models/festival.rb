require 'date'

class Festival < ApplicationRecord

	acts_as_paranoid

	belongs_to :organization

	attachment :fes_image

	geocoded_by :address, latitude: :latitude, longitude: :longitude

	after_validation :geocode, if: :address_changed?

	has_many :information

	has_many :matchs



	enum area:{北海道: 0, 東北: 1, 関東: 2, 中部: 3, 近畿: 4, 中国: 5, 四国: 6, 沖縄: 7}

	enum staff_status:{募集中: 0, 募集していません: 1}



	def matched_by?(staff)
	  matchs.where(staff_id: staff.id).exists?
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


end
