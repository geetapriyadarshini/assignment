class CreateAuthorBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :author_books do |t|
      t.integer :book_id
      t.integer :author_id

      t.timestamps
    end
  end
end
