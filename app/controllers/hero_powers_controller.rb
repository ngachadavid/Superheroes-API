class HeroPowersController < ApplicationController

    def index
        heropowers = HeroPower.all
        render json: heropowers
    end

    def create
        hero_power = HeroPower.create!(hero_power_params)
        render json: hero_power, status: :created
    end

    private

    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end

end
