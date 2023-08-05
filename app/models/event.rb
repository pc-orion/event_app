class Event < ApplicationRecord
    has_one_attached :image
    has_many_attached :gallery_images
    # validates :name, :description, presence: true
end
