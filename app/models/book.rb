class Book < ApplicationRecord

    def self.search(search)
        if search
            where(["name ILIKE ?","%#{search}%"]).or where(["category ILIKE ?","%#{search}%"])
        else
            all
        end
    end
end
