class SessionsController < ApplicationController
    def create
        user = User.find_by(:email => params[:email])
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          render json: user
        else  
          redirect_to "http://localhost:3001/login"     
        end
    end
    def destroy
        session.clear
        redirect_to "/"
    end
    
end
