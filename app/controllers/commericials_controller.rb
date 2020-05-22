class CommericialsController < ApplicationController
    

    def create 
        com = Commercial.create(com_params)
        render json: CommericialSerializer.new(com)
    end

    private

    def com_params
        params.require(:name,:owner).permit(:maxOccupancy,:address,:city,:state,:zipcode)
    end
end
