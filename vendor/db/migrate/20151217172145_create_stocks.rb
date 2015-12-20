class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :category
      t.string :subcategory
      t.string :title
      t.text :description
      t.decimal :price
      t.string :url
      t.string :imageurl
      t.boolean :locked
      t.integer :quanity
      t.integer :itemid
      t.string :endtime
      t.integer :endtimesec
      
      t.timestamps
    end
  end
end
