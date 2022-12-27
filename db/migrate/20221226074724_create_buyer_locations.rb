class CreateBuyerLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :buyer_locations do |t|
      t.references :location, null: false, foreign_key: true
      t.references :buyer, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
