class CustomersController < ApplicationController
  
  def new
    @customer = Customer.new
  end
  
   def create
    @customer = Customer.new(new_params)
    if @customer.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @customer   
      else
      render "new"
    end
  end
  
  def new_params
     params.require(:customer).permit(:login, :name, :surname, :birth_date, :email, :email_confirmation, :password, :password_confirmation,
     :country, :city, :street, :zip_code)
  end
  
  def show
    @customer = Customer.find(params[:id])
  end
  
end