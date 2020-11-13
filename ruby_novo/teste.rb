puts 'Hellou ruby again!!'

puts 'Digite aqui um numero: '
numero1 = gets.chomp.to_i

puts 'Digite aqui outro numero: '
numero2 = gets.chomp.to_i

total = numero1 + numero2
puts total

puts '_______________________________________________________'

puts 'Digite um numero aqui...:'
num = gets.chomp.to_i

puts 'Digite outro numero aqui...:'
num2 = gets.chomp.to_i

total = (num * num2) / 10
puts total.class , "valor total: " , total

puts num.eql?(num2) #retorna um false um true
