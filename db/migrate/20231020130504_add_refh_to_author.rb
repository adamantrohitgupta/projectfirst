class AddRefhToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :author, foreign_key: true
  end
end
