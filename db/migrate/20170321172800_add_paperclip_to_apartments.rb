class AddPaperclipToApartments < ActiveRecord::Migration[5.0]
  def change
        add_attachment :apartments, :image #add this line
  end
end
