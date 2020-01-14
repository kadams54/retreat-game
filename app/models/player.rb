# == Schema Information
#
# Table name: players
#
#  id                 :integer          not null, primary key
#  team_id            :integer
#  name               :string
#  water_stat         :integer          default(0), not null
#  food_stat          :integer          default(0), not null
#  stamina_stat       :integer          default(0), not null
#  active             :boolean          default(TRUE), not null
#  days_active        :integer          default(0), not null
#  days_without_water :integer          default(0), not null
#  days_without_food  :integer          default(0), not null
#  water_count        :integer          default(0), not null
#  food_count         :integer          default(0), not null
#  x_location         :integer          default(0), not null
#  y_location         :integer          default(0), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Player < ApplicationRecord
  START_X = 0 
  START_Y = 0 

  validates :team_id, :water_stat, :food_stat, :stamina_stat, presence: true
  validates_with PlayerValidator
  belongs_to :team
  has_many :moves

  after_create :start_move!

  def has_water?
    water_count > 0
  end
  
  def has_food?
    food_count > 0
  end

  def eat
    return unless has_food?
    self.food_count = food_count - 1
  end

  def drink 
    return unless has_water?
    self.water_count = water_count - 1
  end

  def as_json(_)
    {
      id: id,
      x: x,
      y: y,
    }
  end

  def start_move!
    self.moves.create!(x_location: rand(MoveCalculator::BOARD_WIDTH), y_location: rand(MoveCalculator::BOARD_HEIGHT))
  end

  def stat_total
    water_stat.to_i + food_stat.to_i + stamina_stat.to_i
  end

  def update_location!(location)
  end

  def x
    x_location
  end
  
  def y
    y_location
  end

  def increase_days_active!
    update!(days_active: 1 + days_active)
  end
end
