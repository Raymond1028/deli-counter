# empty array for katz deli queue at opening
katz_deli = []

def take_a_number(katz_deli, name)
  if katz_deli.count == 0
    katz_deli << name
    puts "Welcome, #{name}. You are number 1 in line."
  else
    katz_deli << (name)
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
  end
end

# method to tell who's getting served
def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    next_served = katz_deli.shift
    puts "Currently serving #{next_served}." #":number #{katz_deli.index(next_served) + 1}"
  end
end

def line(katz_deli)
  if katz_deli.count > 0
    line_info = "The line is currently:"
    katz_deli.each_with_index do |name, index|
      line_info += " #{index + 1}. #{name}"
    end
    puts line_info
  else
    puts "The line is currently empty."
  end
end

# Write your code here.
