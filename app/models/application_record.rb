class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def Festival.search(search)
		if search
			where(['name LIKE ?', "%#{search}%"])
		else
			all
		end
	end

end
