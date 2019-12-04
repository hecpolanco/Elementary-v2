class User < ApplicationRecord

    has_many :userwatsons
    has_many :watsons, through: :userwatson

end