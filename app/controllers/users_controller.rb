require 'byebug'
class UsersController < ApplicationController
   
    protect_from_forgery
    def create 
        
        user = User.create(name: params["name"], email: params["email"],
        password: params["password"], tipo: params["tipo"])
        session[:user_id] = user.id
        render json: UserSerializer.new(user)
    end
    def index 
        users = User.all 
        render json: UserSerializer.new(users)
    end
    def show
        user = User.all.find_by(id: params[:id])
        render json: UserSerializer.new(user).serialized_json
    end

end
