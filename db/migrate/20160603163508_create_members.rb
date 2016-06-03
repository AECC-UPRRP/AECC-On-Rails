class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.boolean :active
      t.string :fname
      t.string :email

      t.timestamps null: false
    end
  end
end
