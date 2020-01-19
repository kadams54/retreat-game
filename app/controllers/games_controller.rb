class GamesController < ApplicationController
  def index
    @players = Player.all
    @players_json = @players.to_json(only: [:water_count, :food_count, :days_without_water, :days_without_food, :active, :days_active ], methods: [:x, :y])
    @resources = Resource.all.active
  end
end
