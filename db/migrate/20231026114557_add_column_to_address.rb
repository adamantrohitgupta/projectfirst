class AddColumnToAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :street, :string
  end
end
