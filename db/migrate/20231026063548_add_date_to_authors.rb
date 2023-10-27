class AddDateToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :dob, :date
  end
end
