puts "Please type the file name whatever you want : "

filename = STDIN.gets.chomp()
filename = "#{filename}.md"

puts "Please type the start number you want : "

start_number = STDIN.gets.chomp()

puts "Please type the end number you want : "

end_number = STDIN.gets.chomp()

file = File.open(filename, 'w')

result_string = (start_number..end_number).inject("") { |string, number| string = "#{string}#{number}. \n"  }

file.write(result_string)

puts "Sucess!"

file.close()
