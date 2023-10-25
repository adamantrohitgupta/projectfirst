class Book < ApplicationRecord
    belongs_to :author, optional: true  
    has_many :reviews
   
    validates :name,length: { maximum:5}
    enum status: {
        pending: 0,
        active: 1,
        archived: 2 
      }
    #   def name
    #     "I am #{name}"
    #   end


    # default_scope { where("price > ?",200)}
    # scope :amee, -> (name) { where(:name => name) }
    # def self.costs_more_than(amount)
        # where("price > ?", amount)
    # end
end
