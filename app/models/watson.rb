class Watson < ApplicationRecord
    has_many :userwatsons
    has_many :users, through: :userwatsons
    has_many :categories
    has_many :keywords
    validates :text, length: {minimum: 10}


end