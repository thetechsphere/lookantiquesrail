class Buyantiques < ActiveRecord::Migration
  def change
    create_table :buyantiques do |t|
      t.string :name
      t.string :email
      t.string :phonenumber
      t.string :title
      t.text :description
      t.decimal :askingprice
      t.string :status
      
      t.timestamps
    end
  end
end
