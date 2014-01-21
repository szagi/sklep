class CustomersController < ApplicationController
  before_action :signed_in_customer, only: [:index, :edit, :update, :destroy]
  before_action :correct_customer,   only: [:edit, :update]
  before_action :admin_user, only: :destroy
  def new
    @customer = Customer.new
  end
  
   def create
    @customer = Customer.new(new_params)
    if @customer.save
      sign_in @customer
      flash[:success] = "Witam w sklepie!"
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
    @customers = Customer.find(params[:id])
  end
  def index
    @customer = Customer.all
  end
  
    def edit
    @customer = Customer.find(params[:id])
  end
  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(new_params)
      flash[:success] = "Profil zaktualizowany"
      redirect_to @customer
      # Handle a successful update.
    else
      render 'edit'
    end
  end
    def destroy
    Customer.find(params[:id]).destroy
    flash[:success] = "Użytkownik usunięty"
    redirect_to customers_url
  end
  
  private

    def c_params
      params.require(:customer).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    # Before filters

    def signed_in_customer
      unless signed_in?
        store_location
      flash[:notice] = "Zaloguj się"
      redirect_to signin_url
      end
    end
    def correct_customer
      @customer = Customer.find(params[:id])
      redirect_to(root_url) unless current_customer?(@customer)
    end
    def admin_user
      redirect_to(root_url) unless current_customer.admin?
    end
  
end