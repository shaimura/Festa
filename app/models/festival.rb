require 'date'

class Festival < ApplicationRecord

	acts_as_paranoid

	belongs_to :organization

	attachment :image

	geocoded_by :address, latitude: :latitude, longitude: :longitude

	after_validation :geocode, if: :address_changed?



	enum area:{北海道: 0, 東北: 1, 関東: 2, 中部: 3, 近畿: 4, 中国: 5, 四国: 6, 沖縄: 7}

	enum staff_status:{募集中: 0, 募集していません: 1}



	# 検索機能
	def self.search_name(search)
		if search
			Festival.where(["name LIKE ?", "%#{search}%"])
		else
			Festival.all
		end
	end

	def self.search_area(search_area)
		if search_area
			Festival.where("area LIKE ?", "#{search_area}")
		else
			Festival.all
		end
	end


	def self.search_date(search_date)

		month = Date.today.month
		year = Date.today.year
		day = 1

		mon = search_date.to_i



		if mon < month
			year += 1
			date = Date.new(year,mon,day)
		else
			date = Date.new(year,mon,day)
		end

		Festival.where(date: date.in_time_zone.all_month)


	end

end
