class ItemsController < ApplicationController
  
  def index
    
    if !params[:Submitted]
      @stocks = Stock.all
    else
      if params[:category] != "Select One"
        if params[:subcategory] == "Select One"
          @stocks = Stock.where("title LIKE '%#{params[:STRING]}%' AND category LIKE '%#{params[:category]}%'").limit(params[:numPerPage]).order(params[:SortBy] + " " + params[:SortDir])
        else
          @stocks = Stock.where("title LIKE '%#{params[:STRING]}%' AND category LIKE '%#{params[:category]}%' AND subcategory LIKE '%#{params[:subcategory]}%'").limit(params[:numPerPage]).order(params[:SortBy] + " " + params[:SortDir])
        end
      else
        @stocks = Stock.where("title LIKE '%#{params[:STRING]}%'").limit(params[:numPerPage]).order(params[:SortBy] + " " + params[:SortDir])
      end
    end
    
  end
  
  def show
    
    @stocks = Stock.find(params[:id])
    
  end
  
  
end
