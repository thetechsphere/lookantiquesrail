class StockController < ApplicationController
  
  def index
    @id = params[:id]
    if @id
      @GoNextPage = true
    end
  end
  
  def show
    
    @stocks = Stock.find(params[:id])
    
  end
  
  def edit 
    @stocks = Stock.find(params[:id])
  end
  
  def new 
    @id = params[:id]
    @stocks = Stock.new
  end
  
  def create
    @stocks = Stock.create(stock_perams)
    redirect_to :stocks
  end
  
  def update
    @stocks = Stock.find(params[:id])
    
    if @stocks.update(stock_perams)
      redirect_to @stocks
    else
      render 'edit'
    end
  end
  
  def destroy
    @stocks = Stock.find(params[:id])
    @stocks.destroy
    
    redirect_to management_stock_path
  end
  
  private
    def stock_perams
      params.require(:stock).permit(:category, :subcategory, :title, :description, :price, :url, :imageurl, 0, :quanity, :itemid, :endtime)
      #(id: integer, category: string, subcategory: string, title: string, description: text, price: decimal, url: string, imageurl: string, locked: boolean, quanity: integer, itemid: integer, endtime: string, endtimesec: integer, created_at: datetime, updated_at: datetime) 
    end
  
end
