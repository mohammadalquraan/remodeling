class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :country
      t.string :state_code, limit: 10
      t.string :state_name
      t.integer :zip_code, index:true, unique:true

      t.timestamps
    end
  end
end
