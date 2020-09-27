class Course < ApplicationRecord
    belongs_to :category
    belongs_to :instructor
    has_many :ledgers
    has_many :users, through: :ledgers
end
