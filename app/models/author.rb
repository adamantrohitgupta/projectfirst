# class Author < ApplicationRecord
#     has_many :books, dependent: :destroy
#     has_many :reviews, through: :books

#     accepts_nested_attributes_for :books
# end


class Author < ApplicationRecord
    has_many :books, dependent: :destroy
    has_many :reviews, through: :books, dependent: :destroy # Add dependent option here
  
    accepts_nested_attributes_for :books
  end
  