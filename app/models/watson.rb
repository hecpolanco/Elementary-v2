class Watson < ApplicationRecord
    has_many :categories
    has_many :keywords
    has_many :userwatsons
    has_many :users, through: :userwatson


end