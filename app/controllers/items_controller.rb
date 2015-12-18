class ItemsController < ApplicationController
  
  def index
    
    if !params[:Submitted]
      @stocks = Stock.all
    else
      @stocks = Stock.where("title LIKE '%#{params[:STRING]}%' AND category LIKE '%#{params[:stock_category]}%' AND subcategory LIKE '%#{params[:stock_subcategory]}%'").limit(params[:numPerPage]).order(params[:SortBy] + " " + params[:SortDir])
    end
    
  end
  
  def show
    
    @stocks = Stock.find(params[:id])
    
  end
  
  
end
