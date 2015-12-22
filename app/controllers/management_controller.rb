class ManagementController < ApplicationController
  
  ## Please Add Security for Production

  def stock
    @stock = Stock.all
  end
  
  def showBuyRequests
    @buyRequests = Buyantique.all
  end
  
  def contactItemSeller
    @contactSeller = Buyantique.find(params[:id])
  end
  
  def acceptitem
    @buyRequests = Buyantique.find(params[:id])
    @buyRequests.status = "Accepted!"
    @buyRequests.save
    
    redirect_to contactItemSeller_path(@buyRequests)
  end
  
  def rejectitem
    @buyRequests = Buyantique.find(params[:id])
    @buyRequests.status = "Rejected!"
    @buyRequests.save
    
    redirect_to contactItemSeller_path(@buyRequests)
  end
  
  def changemind
    @buyRequests = Buyantique.find(params[:id])
    @buyRequests.status = "new"
    @buyRequests.save
    
    redirect_to showitemrequests_path
  end

end
