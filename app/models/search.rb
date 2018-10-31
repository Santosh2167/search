class Search < ApplicationRecord

    def search_books
        books = Book.all

        books = books.where(["name LIKE ?","%#{keywords}%"]) if keywords.present?
        books = books.where(["name LIKE ?","%#{category}%"]) if category.present?
        books = books.where(["name LIKE ?","%#{keywords}%"]) if min_price.present?
        books = books.where(["name LIKE ?","%#{keywords}%"]) if max_price.present?
        books = books.where(["name LIKE ?",isbn]) if isbn.present?
        
        return books
    end
end
