class Festival < ApplicationRecord

	belongs_to :organizatio

	geocoded_by :address

	after_validation :geocode, if: lambda{|obj| obj.address_changed?}

	enum area:{北海道: 0, 東北: 1, 関東: 2, 中部: 3, 近畿: 4, 中国: 5, 四国: 6, 沖縄: 7}

	enum staff_status:{募集中: 0, 募集していません: 1}

end
