class AddStatusToAllrequest < ActiveRecord::Migration[5.2]
  def change
    add_column :allrequests, :status, :string, default: "pending"
    #Ex:- :default =>''
  end
end
