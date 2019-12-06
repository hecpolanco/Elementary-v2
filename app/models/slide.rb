class Slide < ApplicationRecord
    has_many :slidewatsons
    has_many :watsons, through: :slidewatsons
end
