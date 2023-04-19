class CreateBloods < ActiveRecord::Migration[5.2]
  def change
    create_table :bloods do |t|
      t.string :blood_group
      t.integer :unit
      
      

      t.timestamps
    end
  end
end
