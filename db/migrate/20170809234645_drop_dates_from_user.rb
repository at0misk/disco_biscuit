class DropDatesFromUser < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :first_birth
  	remove_column :users, :second_birth
  end
end
