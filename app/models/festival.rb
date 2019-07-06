class Festival < ApplicationRecord

	acts_as_paranoid

	belongs_to :organization

	attachment :image

	geocoded_by :address, latitude: :latitude, longitude: :longitude

	after_validation :geocode, if: :address_changed?



	enum area:{北海道: 0, 東北: 1, 関東: 2, 中部: 3, 近畿: 4, 中国: 5, 四国: 6, 沖縄: 7}

	enum staff_status:{募集中: 0, 募集していません: 1}



	# 検索機能
	def self.search(search)
		if search
			Festival.where(["name LIKE ? or area LIKE ?", "%#{search}%", "%#{search}%"])
		else
			Festival.all
		end
	end

end
