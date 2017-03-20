class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.string :name
      t.string :phone
      t.string :hours_to_contact
      t.string :aptstreet1
      t.string :aptstreet2
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end
end
