class CreateOrderElements < ActiveRecord::Migration
  def change
    create_table :order_elements do |t|

      t.integer :amount

      t.timestamps
    end
  end
end
