class Player < ApplicationRecord
   has_many :quizzes

   has_secure_password
   validates :username, uniqueness: {case_sensitive: false}
end