class BloodsController < ApplicationController
    def index
        
    end

    def edit_request
        @blood_groups = Blood.where("unit > 0").pluck(:blood_group)
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
