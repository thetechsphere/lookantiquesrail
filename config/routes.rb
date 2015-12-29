Rails.application.routes.draw do
  
  root 'root#index'
  
  resources :stock, as: 'stocks'
  resources :items, as: 'items'
  resources :buy_antiques, as: 'buy_antiques'
  
  get 'error_pages/construction' => 'error_pages#construction'
  
  get 'items/index' => 'items#index'
  
  get 'adminlogin' => 'adminlogin#index'
  post 'adminlogin' => 'adminlogin#login'
  get 'loginstatus/:status' => 'adminlogin#status', as: "loginstatus"
  
  get 'management/' => 'management#index'
  get 'management/home' => 'management#index'
  get 'management/stock' => 'management#stock'
  get 'management/newItem' => 'stock#index', as: 'management_newitem'
  get 'management/showBuyRequests' => 'management#showBuyRequests', as: 'showitemrequests'
  patch 'management/acceptitem/:id' => 'management#acceptitem', as: 'acceptitem'
  patch 'management/rejectitem/:id' => 'management#rejectitem', as: 'rejectitem'
  patch 'management/changemind/:id' => 'management#changemind', as: 'changemind'
  get 'management/contactItemSeller/:id' => 'management#contactItemSeller', as: 'contactItemSeller'
  get 'management/logout' => 'management#logout', as: 'logout'
  
  delete 'stock/:id' => 'stock#destroy', as: 'destroystock'
  
  post 'buy_antiques' => 'buy_antiques#index', as: 'buyantiques'
  
end
