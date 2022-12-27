class CreateLeads < ActiveRecord::Migration[7.0]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :city
      t.string :state_code
      t.string :street_address
      t.integer :zip_code
      t.boolean :sold
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
