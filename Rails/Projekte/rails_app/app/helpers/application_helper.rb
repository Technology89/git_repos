module ApplicationHelper
	def format_price(var)
		if var.free?
			content_tag(:strong, "FREE")
			#"<strong>FREE</strong>".html_safe
		else
			number_to_currency(var.price, unit: :"€")
		end
	end
end
