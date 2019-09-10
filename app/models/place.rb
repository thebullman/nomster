class Place < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, length: { minimum: 3 }
    validates :add, presence: true
    validates :desc, presence: true
end
