# loop do
#   puts "hello world"
# end
#
# can't use return inside a block -- it's implicit
# 3.times { puts "hello world " }
#
def block_method
  puts "this is the first line"  #line 1
  yield  # this tells ruby to run the do in block_method down below
  puts "this is after the yield"  #line 3
end

# ruby runs this method, which does line 1 first, then the yield runs line 2
# and then line 3 is run
block_method do
  puts "this statement is called from the block"  # line 2
end