class Meal < ApplicationRecord
    validates :name, presence: true, length: { minimum: 2}
    validates :description, presence: true, length: { minimum: 2}
    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :available, presence: false
    belongs_to :category , required: false
    has_many :order_meals
    has_one_attached :image
end
