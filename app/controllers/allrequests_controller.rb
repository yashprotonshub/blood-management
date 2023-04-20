class AllrequestsController < ApplicationController
    def update_accept_request
        debugger
        @update_accept= User.find(params[:user_id])
        @update_accept.allrequest.update(status: "approved")
        redirect_to root_path
    end

    def update_reject_request
        @update_reject= User.find(params[:user_id])
        @update_reject.update(status: "rejected")
        redirect_to root_path
    end
end
