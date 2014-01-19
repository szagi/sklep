class Product < ActiveRecord::Base
  
  has_many :order_element
  
end
