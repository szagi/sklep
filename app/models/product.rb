class Product < ActiveRecord::Base
  
  has_many :order_element
  
    validates :name, :price, presence: true
    validates :name,  uniqueness: true, format: { with: /\A[a-zA-Z]+\z/},length: {minimum: 5} 
  
  
end
