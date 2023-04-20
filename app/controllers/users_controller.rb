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

end
