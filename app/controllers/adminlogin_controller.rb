class AdminloginController < ApplicationController
    
  def index
    @adminlogin = Adminlogins.new;
  end
  
  def login
    @LoginInfo = Adminlogins.where(["username = ? and password = ?", login_params["username"], login_params["password"]]);
    if @LoginInfo
      session[:username] = login_params["username"];
      session[:isloggedin] = true;
      redirect_to management_path;
    else
      redirect_to loginstatus_path("ERROR");
    end
  end
  
  def logout
  end
  
  def status
    @Status = params();
  end
  
  private
    def login_params
      params.permit(:username, :password);
      #(id: integer, category: string, subcategory: string, title: string, description: text, price: decimal, url: string, imageurl: string, locked: boolean, quanity: integer, itemid: integer, endtime: string, endtimesec: integer, created_at: datetime, updated_at: datetime) 
    end
    
end
