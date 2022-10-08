class Reemplazos
	def self.reemplazar(string)
		reemplazos = {'{' => 'do\n', '}' => '\nend'}
		letras = string.scan(/(\w) (\s) /)
		for letra in letras
			letra = reemplazos[letra] || letra
		end
		letras.join()
		puts letras
	end
	
	def self.horas(horayminutos)
		hora = horayminutos.hour
		minutos = horayminutos.min
		hashMin = {0..10 => "#{hora} en punto", 11..20 => "#{hora} y cuarto", 21..34 => "#{hora} y media", 35..44 => "#{hora + 1} menos veinticinco", 45..55 => "#{hora + 1} menos cuarto" , 56..59 => "Casi son las #{hora + 1}"}
		puts "Son las "+ hashMin.find {|key, value| break value if key.cover? minutos} + "."
	end
	
	def self.contar(primero, segundo)
		puts primero.downcase.scan(segundo.downcase).count
	end
	
	#punto 12
	def longitud(arreglo)
		arreglo.map { |palabra| palabra.length }
	end
	
	#punto 13: recibe un hash y retorna un string con los pares clave/valor formateados
	#en una lista ordenada den texto plano.
	def listar(lista)
		str = ''
		lista.each_with_index do |(k,v), index|
			str += "#{index+1}. #{k} -> #{v} \n"
		end
		puts str
	end
	
	#punto 14: listar mejorada, recibe parametro "pegamento"
	def listar_mejorado(lista, pegamento=':')
		str = ''	
		lista.each_with_index do |(k,v), index|
			str += "#{index+1}. #{k}#{pegamento} #{v} \n"
		end
		puts str
	end
	
end
