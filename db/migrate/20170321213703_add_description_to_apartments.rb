class AddDescriptionToApartments < ActiveRecord::Migration[5.0]
  def change
    add_column :apartments, :description, :string
  end
end
