class AddLongInts < ActiveRecord::Migration
  def change
    change_column :stocks, :itemid, :integer, :limit => 8
  end
end
