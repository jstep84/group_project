class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :title
      t.string :address
      t.float :longitude
      t.float :latitude
      t.string :phone
      t.string :hours
      t.string :description
      t.string :service

      t.timestamps null: false
    end
  end
end
