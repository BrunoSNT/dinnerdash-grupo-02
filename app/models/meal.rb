class Meal < ApplicationRecord
    validates :name, presence: true, length: { minimum: 2}
    validates :description, presence: true, length: { minimum: 2}
    validates :price, presence: true, numericality: { greater_than: 0 }
    belongs_to :category , required: false
    has_one_attached :image
end
