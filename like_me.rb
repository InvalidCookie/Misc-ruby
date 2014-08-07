require 'open-uri'
while true
puts "Does senpai like me? ^(o.o^)"
choice = gets.chomp.downcase
	if choice == 'yes'
	open('senpai.png', 'wb') do |file|
		file << open('http://31.media.tumblr.com/f42ae7072e6f4b431d52164f867d1131/tumblr_mzqdwibf411rf7op8o1_500.png').read
	Process.exit
	end
	end
	if choice == 'no'
	open('senpai.png', 'wb') do |file|
		file << open('http://scontent-b.cdninstagram.com/hphotos-xap1/t51.2885-15/927966_634742799942272_197989642_a.jpg').read
	Process.exit
	end
	else 'please repeat that? (>o.o)> yes or no? <(o.o<)'
end
end