class ItemsController < ApplicationController
  
  def index
    
    @stocks = Stock.all
    
  end
  
  def show
    
    @stocks = Stock.find(params[:id])
    
  end
  
  
end
