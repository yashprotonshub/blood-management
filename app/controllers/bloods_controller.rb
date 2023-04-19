class BloodsController < ApplicationController
    def index
        @all_groups_details = Blood.all
    end

    def edit_request
    end

    def edit_donation
    end

    def update_donation
        @donate= Blood.find_by(blood_group: params[:user][:blood_group])
        @donate.update(unit: @donate.unit + params[:user][:unit].to_i)
        @donation_histroy= Alldonation.create(user_id: current_user.id, blood_group_name: @donate.blood_group, unit: params[:user][:unit].to_i)
        redirect_to root_path
    end

    def update_request
        @request=Blood.find_by(blood_group: params[:user][:blood_group])
        @request.update(unit: @request.unit - 1)
        @request_history= Allrequest.create(user_id: current_user.id, reason: params[:user][:reason], blood_group_name: @request.blood_group)
        redirect_to root_path
    end

end
