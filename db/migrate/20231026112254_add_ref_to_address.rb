class AddRefToAddress < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses,:person
  end
end
