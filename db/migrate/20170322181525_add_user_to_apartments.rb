class AddUserToApartments < ActiveRecord::Migration[5.0]
  def change
    add_reference :apartments, :user, foreign_key: true
  end
end
