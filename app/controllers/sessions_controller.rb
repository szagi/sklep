class SessionsController < ApplicationController
  
    def new
  end

def create
  customer = Customer.find_by(login: params[:session][:login])
  if customer && customer.authenticate(params[:session][:password])
    sign_in customer
    redirect_to customer
  else
    flash.now[:error] = 'Błędny login/hasło' # Not quite right!
      render 'new'
  end
end

def destroy
    sign_out
    redirect_to root_url
  end
end
