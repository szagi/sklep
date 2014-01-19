class OrderElement < ActiveRecord::Base
  belongs_to :order
  
  validates :amount, presence: true
end
