class Recipe < ActiveRecord::Base
  # your code here
  def to_s
  	puts "#{name} : #{description} : #{length} : #{difficulty} : #{rating}" 
  end
end