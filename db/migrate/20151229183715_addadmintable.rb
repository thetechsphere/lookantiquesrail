class Addadmintable < ActiveRecord::Migration
  def change
    create_table :adminlogins do |t|
      t.string :username
      t.string :email
      t.string :password
    end
  end
end
