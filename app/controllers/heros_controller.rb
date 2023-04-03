class HerosController < ApplicationController

    def index
        hero = Hero.all
        render json: hero
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero
    end

    private
    def find_heroes
        Hero.all
    end
end
