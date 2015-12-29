class ManagementController < ApplicationController
  
  ## Please Add Security for Production

  def index
    if session[:isloggedin] != true
      redirect_to loginstatus_path("Please Login First");
    end
  end

  def stock
    if session[:isloggedin] != true
      redirect_to loginstatus_path("Please Login First");
    end
    @stock = Stock.all
  end
  
  def showBuyRequests
    if session[:isloggedin] != true
      redirect_to loginstatus_path("Please Login First");
    end
    @buyRequests = Buyantique.all
  end
  
  def contactItemSeller
    if session[:isloggedin] != true
      redirect_to loginstatus_path("Please Login First");
    end
    @contactSeller = Buyantique.find(params[:id])
  end
  
  def acceptitem
    if session[:isloggedin] != true
      redirect_to loginstatus_path("Please Login First");
    end
    @buyRequests = Buyantique.find(params[:id])
    @buyRequests.status = "Accepted!"
    @buyRequests.save
    
    redirect_to contactItemSeller_path(@buyRequests)
  end
  
  def rejectitem
    if session[:isloggedin] != true
      redirect_to loginstatus_path("Please Login First");
    end
    @buyRequests = Buyantique.find(params[:id])
    @buyRequests.status = "Rejected!"
    @buyRequests.save
    
    redirect_to contactItemSeller_path(@buyRequests)
  end
  
  def changemind
    if session[:isloggedin] != true
      redirect_to loginstatus_path("Please Login First");
    end
    @buyRequests = Buyantique.find(params[:id])
    @buyRequests.status = "new"
    @buyRequests.save
    
    redirect_to showitemrequests_path
  end
  
  def logout
    if session[:isloggedin] == true
      session[:isloggedin] = false
      redirect_to adminlogin_path;
    end
  end

end
