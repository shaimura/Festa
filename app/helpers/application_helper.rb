module ApplicationHelper

	def remaining_point(staff)

		total = 0

		plus_points = Point.unscoped.where(staff_id: staff.id)

    	plus_point = 0

    	plus_points.each do |point|
    		plus_point += point.plus_point.to_i
    	end

    	use_points = Order.unscoped.where(staff_id: staff.id)

    	use_point = 0

    	use_points.each do |point|
    		use_point += point.present.use_point.to_i
    	end

    	total = plus_point - use_point

    	return total
	end

	def total_point(staff)

		total = 0

		plus_points = Point.unscoped.where(staff_id: staff.id)

    	plus_point = 0

    	plus_points.each do |point|
    		plus_point += point.plus_point.to_i
    	end

    	total += plus_point

    	return total
	end

end
