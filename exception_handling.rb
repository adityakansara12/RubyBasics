# Start a block using begin if it may raise an error
# begin/rescue block can be used

begin
  IO.sysope('/dev/null')
rescue => exception
  puts exception
end



def checking
  IO.sysope('/dev/null')
rescue => exception
  puts exception
end

checking
