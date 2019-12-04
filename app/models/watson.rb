class Watson < ApplicationRecord

    has_many :userwatsons
    has_many :users, through: :userwatson


end