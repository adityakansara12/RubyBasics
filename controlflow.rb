# for x in 0..6
#   break if x>3
#   puts x
# end
# # 0 1 2 3

# for x in 0..6
#   next if x<3
#   puts x
# end
# # 3 4 5 6

# restart = false
# for x in 0..6
#   if x == 3
#     puts "Value of x is #{x}"

#     if restart == false
#       puts "Re-doing when x = " + x.to_s
#       restart = true

#       puts 'Redo starting'

#       redo

#       puts 'Redo started'
#     end
#   end

#   puts x
# end

10.times do |i|
  begin
    puts "Iteration #{i}"

    raise if i == 2
  rescue
    puts 'In rescue'
    i = i + 1
    retry
  end
end
