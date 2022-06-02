class Author < ApplicationRecord
  has_one_attached :profile_picture, dependent: :destroy
  has_many :books, dependent: :destroy
  validates :profile_picture, attached: true,
                    content_type: ['image/png'],
                    aspect_ratio: :square, size: { less_than_or_equal_to: 1.megabytes, message: "must be less than or equal to 1MB" }
end
