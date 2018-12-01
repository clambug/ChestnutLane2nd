class UserController < ApplicationController
    
    def login
        session[:login] = 1
        flash[:notice] = "Welcome to Chestnut Lane, you have succcessfully logged in!"
    end
    
    
    def logout
        session[:login] = nil
        flash[:notice] = "Come again!!"
    end

    
end
