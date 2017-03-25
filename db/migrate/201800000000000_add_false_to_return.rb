class AddFalseToReturn < ActiveRecord::Migration
  def change
    change_column_default :user_books, :returned, false

  end
end
