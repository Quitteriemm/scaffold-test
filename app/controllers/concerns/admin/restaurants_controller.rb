# app/controllers/admin/restaurants_controller.rb
class Admin::RestaurantsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @restaurants = user.restaurants.all
  end
end
