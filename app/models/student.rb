class Student < ApplicationRecord
#    validates :first_name,:last_name,:email, presence: true
#    validates :email ,uniqueness:true
#    validates :first_name,:last_name, length: {minimum:4}
#    validates_format_of :first_name,:last_name, with: /\A[a-zA-Z]+\z/, on: :create, message: "value is invalid"
#    validates :age ,numericality:true
#    after_create :check?

#     def check?
#         if  self.age.present?
#             age = self.age
#             puts "your age is :#{age}"
#         else 
#             puts "age is not defined"
#         end
#     end
end