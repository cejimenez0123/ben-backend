class UsersController < ApplicationController
 
    def create
        
        user = User.create(name: params["name"], username: params["email"],
        password: params["password"], type: params["type"])
        session[:user_id] = user.id
        render json: UserSerializer.new(user)
    end
    def index 
        users = User.all 
        render json: UserSerializer.new(users).serialized_json
    end
    def show
        user = User.all.find_by(id: params[:id])
        render json: UserSerializer.new(user).serialized_json
    end
end
