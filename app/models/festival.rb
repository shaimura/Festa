class Festival < ApplicationRecord

	enum area:{北海道: 0, 東北: 1, 関東: 2, 中部: 3, 近畿: 4, 中国: 5, 四国: 6, 沖縄: 7}

	enum staff_status:{募集中: 0, 募集していません: 1}

end
