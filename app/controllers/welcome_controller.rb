class WelcomeController < ApplicationController
  def index
    @users = [[12, 25], [26, 37], [28, 42]]
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.first
      marker.lng user.last
    end
  end
end
