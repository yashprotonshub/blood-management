class AddStatusToAllrequest < ActiveRecord::Migration[5.2]
  def change
    add_column :allrequests, :status, :string, default: false
    #Ex:- :default =>''
  end
end
