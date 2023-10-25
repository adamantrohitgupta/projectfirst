class AddCoToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :status, :integer, default: 0
    #Ex:- :default =>''
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
