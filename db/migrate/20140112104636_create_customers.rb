class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      
      t.string :login
      t.string :name
      t.string :surname
      t.string :gender
      t.date :birth_date
      t.string :email
      t.string :password
      t.string :country
      t.string :city
      t.string :street
      t.string :zip_code


      t.timestamps
    end
  end
end
