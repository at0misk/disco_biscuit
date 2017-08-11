class AddBirthColumnsAgain < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :first_birth, :string
  	add_column :users, :second_birth, :string
  end
end
