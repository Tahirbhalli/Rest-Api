class ResturantController < ApplicationController
    def index
        resturant=Resturant.all
        render json: resturant, include: [:owner]
    end
    def show
        @resturant=Resturant.find_by(name: params[:id])
        render json: @resturant, include: [:owner]
    end
    def destroy
        @resturant=Resturant.find_by(name: params[:id])
        Resturant.destroy(@resturant.id)
        render json: ['Successfully deleted']
    end
end
