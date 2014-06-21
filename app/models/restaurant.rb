class Restaurant < ActiveRecord::Base
  has_many :reviews
  belongs_to :category

  validates :name, presence: true
  validates :address, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
end
