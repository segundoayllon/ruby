class Rgb
	def notacion_hexadecimal(rgb)
		str = '#'
		rgb.each {|valor| str += valor.to_s(16)}
	return puts str
	end
	
	def notacion_entera(rgb)
		str = (rgb[0] + rgb[1] *256 + rgb[2] *256 *256).to_s
	return puts str
	end
end
