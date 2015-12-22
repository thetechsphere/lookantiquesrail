class BuyAntiquesController < ApplicationController
    
  def index
  end
  
  def show
    
  end
  
  
  def new 
    @buyantiques = Buyantique.new
  end
  
  def create
    @buyantiques = Buyantique.create(stock_perams)
    redirect_to buy_antique_path("Thank You")
  end
  
  private
    def stock_perams
      params.require(:buyantique).permit(:name, :email, :phonenumber, :title, :description, :askingprice, :quanity, :status)
      #(id: integer, category: string, subcategory: string, title: string, description: text, price: decimal, url: string, imageurl: string, locked: boolean, quanity: integer, itemid: integer, endtime: string, endtimesec: integer, created_at: datetime, updated_at: datetime) 
    end
  
end
