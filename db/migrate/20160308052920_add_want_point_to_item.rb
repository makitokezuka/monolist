class AddWantPointToItem < ActiveRecord::Migration
  def change
    add_column :items, :want_point, :integer
  end
end
