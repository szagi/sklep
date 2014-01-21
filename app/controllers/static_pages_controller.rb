class StaticPagesController < ApplicationController
  def home
    @product = Product.all
  end

  def about
  end
  
  def contact
    
  end
  
end
