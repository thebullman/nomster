class Place < ApplicationRecord
    belongs_to :user
    validates :name, presense: true
end
