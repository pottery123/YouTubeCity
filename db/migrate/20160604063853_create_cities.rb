class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :long
      t.string :lat
      t.string :radius
      t.integer :take
      t.string :type

      t.timestamps null: false
    end
  end
end
