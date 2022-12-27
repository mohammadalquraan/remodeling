class CreateServiceBuyers < ActiveRecord::Migration[7.0]
  def change
    create_table :service_buyers do |t|
      t.references :service, null: false, foreign_key: true
      t.references :buyer, null: false, foreign_key: true
      t.float :payout
      t.boolean :active

      t.timestamps
    end
  end
end
