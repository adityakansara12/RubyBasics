# A constant can not be defined inside the function definition
# Variable name of constant must start with a capital letter
# Constant values can be changed but will get a warning message


class Blog
  URL = "www.helloworld.com"
  AUTHOR = "aditya-kansara"
end

puts Blog::URL
puts Blog::AUTHOR

class Post < Blog
  def data
    puts URL
  end
end

Post.new.data

module Mixin
  CONST = 123
end

class A
  include Mixin
  puts CONST
end

p Object.const_get 'Blog::URL'

