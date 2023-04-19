class CreateAllrequests < ActiveRecord::Migration[5.2]
  def change
    create_table :allrequests do |t|
      t.text :reason
      t.string :blood_group_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
