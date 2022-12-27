class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :email, index:true, unique:true
      t.string :password
      t.string :name
      t.string :admin_type

      t.timestamps
    end
  end
end
