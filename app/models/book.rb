class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
  has_many :user_books
  has_many :users, through: :user_books
end
