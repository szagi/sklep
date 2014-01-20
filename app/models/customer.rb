class Customer < ActiveRecord::Base
before_save { self.email = email.downcase }
before_save { self.login = login.downcase }
  has_many :order
    validates :name, :email,:password,:city,:country,:street,:zip_code, presence: true
    validates :email, confirmation: true, uniqueness: true#, :message => "^Friendly field name is blank"
    #validates :password, confirmation: true, length: {minimum: 6}
    validates :login, presence: true, exclusion: { in: Customer.all.collect{|l| [:login]}}, 
    format: { with: /[a-zA-Z0-9]/}, length: {minimum: 5, maximum:8}, uniqueness: true
    validates :name, :surname, format: { with: /\A[a-zA-Z]+\z/}
    validates :name, length: {minimum: 3} 
     validates :surname, format: { with: /\A[a-zA-Z]+\z/} 
      validates :surname, length: {minimum: 4} 

has_secure_password
validates :password, confirmation: true, length: {minimum: 6}

end
