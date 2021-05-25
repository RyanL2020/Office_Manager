class Office < ApplicationRecord

    has_many :employees

    scope :locations, -> (p){ where("lower(location) LIKE :search", search: p) }
    
    
end
