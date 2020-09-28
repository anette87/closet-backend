class User < ApplicationRecord
    
    belongs_to :closet
    has_many :items, through: :closet 
    validates :email, presence: true, uniqueness: true
    validates :name, presence: true,
end
