class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.references :item, index: true, foreign_key: true
      t.integer :have_point
      t.integer :want_point

      t.timestamps null: false
    end
  end
end
