#attempt to make a one liner of code below

require 'YAML'
File.file("data.yml") ? @data = YAML::load(File.read('data.yml')) : File.new("data.yml", 'w+'); @data = {:default => 1}


=begin

require 'YAML'
puts "version 0.3"
if_file = File.file?("movieData.yml")
if if_file == false
	puts 'data file not found.'
	puts 'creating data file...'
	File.new("movieData.yml", 'w+')
	puts'data file created!'
else
	puts 'data file found...'
end
@movies = YAML::load(File.read('movieData.yml'))
puts 'data file loaded!'
file_zero = File.zero?("movieData.yml")
	if file_zero == true
	@movies = {:default => 1}
	puts '~~~~~~~~~~~'
	puts "No data was found movieData.yml so a default key and value has been made,"
	puts "please add a movie to the list before deleting the 'default' movie."
	puts "this program will not function without a default 'key' and 'value'"
	puts '~~~~~~~~~~~'
end
	
=end