class Book < ApplicationRecord

    def self.search(search)
        if search && search!=""
            where(["name ILIKE ?","%#{search}%"]).or where(["category ILIKE ?","%#{search}%"])
            #broken code >>> basic_search(category: "%#{search}%" ).basic_search(name: "%#{search}%")
        else
            all
        end
    end
end
