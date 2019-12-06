class Watson < ApplicationRecord
    has_many :userwatsons, dependent: :destroy
    has_many :users, through: :userwatsons
    has_many :slidewatsons, dependent: :destroy
    has_many :slides, through: :slidewatsons
    has_many :categories
    has_many :keywords
    validates :text, length: {minimum: 10}


end