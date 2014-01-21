class ProductsController < ApplicationController
  
  def new 
    @product = Product.new
  end
  
  def create
    @product = Product.new(new_params)
    if @product.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def new_params
     params.require(:product).permit(:name, :price)
  end
  
  def show
    @product = Product.all
  end
  
end
