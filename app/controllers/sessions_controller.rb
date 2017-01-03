class SessionsController < ApplicationController
  def new
  end
  def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
      remember user 
        	redirect_to user
          # Log the user in and redirect to their profile page.
        else
          flash[:danger] = 'Invalid email/password combination'
          render 'new'
        end
     end

      
   


      

      # Returns true if a user is logged in, false otherwise.
      def logged_in?
        !current_user.nil?
      end

      # Returns true if the given user is the current user.
      def current_user?(user)
        user == current_user
      end

      def destroy
        log_out if logged_in?
        redirect_to root_url
      end 
end
