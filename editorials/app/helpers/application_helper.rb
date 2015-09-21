module ApplicationHelper
	def sortable(column, title = nil, assignment)
		title ||= column.titleize
		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
		link_to title, :id => 1, :sort => column, :direction => direction 
	end
end
