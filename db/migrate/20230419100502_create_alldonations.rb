class CreateAlldonations < ActiveRecord::Migration[5.2]
  def change
    create_table :alldonations do |t|
      t.integer :unit
      t.string :blood_group_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
