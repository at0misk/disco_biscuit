class AddMethodToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :payment_method, :string
  end
end
