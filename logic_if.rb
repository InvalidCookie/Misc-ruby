=begin
def tr 
	puts "true"
end

def fa 
	puts "false"
end

def nx
	puts "next"
end

var = "one"

#one
tr; nx if var=="one"

puts "\n"

#two
if var=="one" then tr; nx end

puts "\n"

#three
if var=="one"
	tr
end


puts "\n\n"

var = true
#four
var ? tr : fa
=end

require 'benchmark'

def tr
	return true
end

var = true
n = 1000000

Benchmark.bm do |x|
	x.report {n.times do; tr if var==true; end}  #1
	x.report {n.times do; if var==true then tr end; end}  #2
	x.report {n.times do; if var==true
				tr
			  end; end}                         #3
	x.report {n.times do; var ? tr : fa; end}  #4 fastest
end


 #4th always is fastest even when n is changed, 1-3 flip flop, cant tell which is better or worse.

=begin
	order from fastest t slowest
123
2:13 (21 are close; tied)
132
132
321
1:32 (13 are tied)
312
321
321
123
2:1:3 (all tied)
12:3 (23 tied)
123
123
213
132
1:32 (tie)
21:3 (tie
21:3
12:3

=end
