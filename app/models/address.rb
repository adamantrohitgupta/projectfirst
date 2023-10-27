class Address < ApplicationRecord
    belongs_to :Person, class_name: "Person", foreign_key: "Person_id"
end
