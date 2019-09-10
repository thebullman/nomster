class Place < ApplicationRecord
    belongs_to :user
    has_many :comments

    geocoded_by :add
    after_validation :geocode

    validates :name, presence: true, length: { minimum: 3 }
    validates :add, presence: true
    validates :desc, presence: true
end
