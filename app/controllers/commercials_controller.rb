require 'byebug'
class CommercialsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create 
       
        com = Commercial.create(name: params["name"],user_id: params["owner"],max_occupancy: params["maxOccupancy"],address: params["address"],city:params["city"],state:params["state"],zipcode: params[:zipcode],current_occupancy: 0)
        render json: CommercialSerializer.new(com)
    end
    def index
        coms = Commercial.all
        render json: CommercialSerializer.new(coms)
    end

    private

    
end
