class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :description, presence: true
  validates :rating, numericality: {
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 5
    }, allow_nil: false
end
