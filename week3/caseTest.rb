x = 1
y = 2

case
when x > y
  puts "x is bigger than y"
when x < y
  puts "y is bigger than x"
when x == y
  puts "Equal"
else
  puts "Error"
end


# case expression
medals = 20

case medals
when 0
  puts "sorry no medals :/"
when 1..5
  puts "nice"
when 6..10
  puts "good"
when 11..20
  puts "great"
when 21..30
  puts "excellent"
when 31..40
  puts "fantastic"
else
  puts "Wow so many"
end