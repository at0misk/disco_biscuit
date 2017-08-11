class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first
      t.string :second
      t.date :first_birth
      t.date :second_birth
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.integer :deposit
      t.string :payment_type

      t.timestamps
    end
  end
end
