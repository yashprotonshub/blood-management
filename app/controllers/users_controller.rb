class UsersController < ApplicationController
    
    def show
        @all_donations=current_user.alldonations
    end

    def stocks
        @all_groups_details = Blood.all
    end

    def user_request
        @request= current_user.allrequest
    end

    def admin_all_request
        @all_users = User.all
    end

    def user_profile_page
        @user_details= User.find(params[:user_id])
    end
end
