class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :restaurants, through: :categorizations

  validates :name, uniqueness: true
end
