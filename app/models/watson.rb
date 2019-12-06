class Watson < ApplicationRecord
    has_many :userwatsons, dependent: :true
    has_many :users, through: :userwatsons
    has_many :slidewatsons, dependent: :true
    has_many :slides, through: :slidewatsons
    has_many :categories
    has_many :keywords
    validates :text, length: {minimum: 10}


end