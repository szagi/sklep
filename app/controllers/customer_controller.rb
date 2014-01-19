class CustomerController < ApplicationController
  

  def new
    @customer = Customer.new
  end

    def create
    @customer = Customer.new(new_params)
    if @customer.save
      redirect_to action: "show"    
      else
      render "new"
    end
  end
  
  def new_params
     params.require(:customer).permit(:login, :name, :surname, :birth_date, :email, :email_confirmation, :password, :password_confirmation,
     :country, :city, :street, :zip_code)
  end
  
  def show
    @customer = Customer.all
  end
  
  
  def login
    @customer = Customer.all
  end
end
