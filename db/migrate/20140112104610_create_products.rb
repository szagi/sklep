class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      
      t.string :name
      t.float :price
      t.integer :amount_available
      

      t.timestamps
    end
  end
end

class Movie < Product
  def gender
    
  end
  def media
    
  end
  
end
