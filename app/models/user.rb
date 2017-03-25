class User < ActiveRecord::Base
  has_many :user_books
  has_many :books, through: :user_books

  def checkout( book, due_date: )
    checkedout = UserBook.where("user_id = #{self.id} AND book_id = #{book.id} AND returned = false")
    if !checkedout.empty?
      UserBook.create( user_id: self.id, book_id: book.id, due_date: due_date )
    end
  end

  def return( book )
    returned_book = UserBook.find_by( book_id: book.id )
    returned_book.returned = true
    returned_book.due_date = nil
    returned_book.save
  end

  def checked_out( books )
    
  end
end
