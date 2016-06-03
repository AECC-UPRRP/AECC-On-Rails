class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :itemID
      t.integer :memberID
      t.string :completion

      t.timestamps null: false
    end
  end
end
