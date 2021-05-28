class DronesController < ApplicationController
    def index
        drones = Drone.all 
        render json: drones 
    end
end
