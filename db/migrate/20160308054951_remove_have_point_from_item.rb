class RemoveHavePointFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :Have_point, :string
  end
end
