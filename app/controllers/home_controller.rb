class HomeController < ApplicationController
  def index
    @dog_shows = DogShow.all
  end
end
