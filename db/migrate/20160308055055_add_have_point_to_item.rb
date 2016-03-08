class AddHavePointToItem < ActiveRecord::Migration
  def change
    add_column :items, :have_point, :integer
  end
end
