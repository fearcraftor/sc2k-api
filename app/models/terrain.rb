class Terrain < ApplicationRecord
  belongs_to :city

  after_create :generate

  def generate

    self.terrain_data = Array.new
  
    (0..17).each do |j|
      (0..17).each do |k|
        self.terrain_data << {x: j, y: k, height: 0, value: 0, water: false, power: false}
      end
    end

    self.save!
  end
end
