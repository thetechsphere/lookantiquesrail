// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function CatagoryChange(){
  if($("#stock_category").val() == "Art"){
      console.log("Changed To Art");
      $("#stock_subcategory").html("<option>Please Choose A Sub Catagory</option><option>Prints</option><option>Originals</option>");
  }else if($("#stock_category").val() == "Books"){
      console.log("Changed To Books");
      $("#stock_subcategory").html("<option>Please Choose A Sub Catagory</option><option>Comics</option><option>Novels</option><option>Other</option>");
  }else if($("#stock_category").val() == "Cameras"){
      console.log("Changed To Cameras");
      $("#stock_subcategory").html("<option>Please Choose A Sub Catagory</option><option>Cameras</option><option>Other</option>");
  }else if($("#stock_category").val() == "Collectibles"){
      console.log("Changed To Collectibles");
      $("#stock_subcategory").html("<option>Please Choose A Sub Catagory</option><option>Bottles</option><option>Clocks</option><option>Steins</option><option>Other</option>");
  }else if($("#stock_category").val() == "Dinnerware"){
      console.log("Changed To Dinnerware");
      $("#stock_subcategory").html("<option'>Please Choose A Sub Catagory</option><option>China</option><option>Pewter</option><option>Silver</option><option>Other</option>");
  }else if($("#stock_category").val() == "Home Decor"){
      console.log("Changed To Home Decor");
      $("#stock_subcategory").html("<option>Please Choose A Sub Catagory</option><option>Vases</option><option>Other</option>");
  }else if($("#stock_category").val() == "Other"){
      console.log("Changed To Home Decor");
      $("#stock_subcategory").html("<option>~~OTHER~~</option>");
  }else{
    console.log("Changed To Defualt");
    $("#stock_subcategory").html("<option>Please Choose A Catagory</option>");
  }
}