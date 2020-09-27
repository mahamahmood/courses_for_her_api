class User < ApplicationRecord
    has_many :ledgers
    has_many :courses, through: :ledgers
end
