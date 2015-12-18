class ItemsController < ApplicationController
  
  def index
    
    if !params[:Submitted]
      @stocks = Stock.all
    else
      
    end
    
  end
  
  def show
    
    @stocks = Stock.find(params[:id])
    
  end
  
  
end
