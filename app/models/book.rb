class Book < ApplicationRecord
  belongs_to :author
  has_many_attached :cover_photos, dependent: :destroy
  validates :cover_photos, attached: true,
                    content_type: ['image/png'],
                    aspect_ratio: :square, size: { less_than_or_equal_to: 1.megabytes, message: "must be less than or equal to 1MB" }
end
