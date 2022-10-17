class EventScheduleController < ApplicationController
    def index
        @dog_shows = DogShow.all
    end

end