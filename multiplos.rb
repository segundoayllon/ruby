class Multiplos

	def multiplos_3_y_5(tope)
	return puts ((1..tope).select {|num| num%3 == 0 and num%5 == 0 }).sum
	end
	
	def multiplos_de(numeros, tope)
	return puts ((1..tope).select {|num| 
			numeros.all? { |multiplo|
			num%multiplo == 0} 
		}).sum
	end

end
