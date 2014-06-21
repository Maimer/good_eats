class Categorizations < ActiveRecord::Base
  has_many :restaurants
  has_many :categories
end
