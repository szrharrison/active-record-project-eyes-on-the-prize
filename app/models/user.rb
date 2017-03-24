class User < ActiveRecord::Base
  has_many :books, through: :user_books
end
