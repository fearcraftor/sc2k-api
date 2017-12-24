class City < ApplicationRecord
  belongs_to :user
  has_many :terrains
  has_many :buildings
  
end
