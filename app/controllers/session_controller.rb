class SessionController < ApplicationController
    def new
    end

    def create
        puts "this is params",params
        user = User.find_by :email => params[:email]
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            # redirect_to root_path
            render :json => {
                "isSuccess":true,
                "name":user.name,
                "email":user.email,
                "reservations":user.reservations
            }
        else
            flash[:error] = "Invalid username or password"
            render :json => {
                "isSuccess":false,
                'error': "Invalid username or password"
            }# try again
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to login_path
    end
end
