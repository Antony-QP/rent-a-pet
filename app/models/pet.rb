class Pet < ApplicationRecord
    has_many :users, through: :bookings
    belongs_to :user
    has_one_attached :photo
    validates :name, presence: true
    validates :description, presence: true
    validates :location, presence: true
    validates :breed, presence: true
    validates :price, presence: true
    geocoded_by :location
    after_validation :geocode, if: :will_save_change_to_location?
end
