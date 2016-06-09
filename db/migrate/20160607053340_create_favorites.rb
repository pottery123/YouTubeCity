class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string 'lat'
      t.string 'lng'
      t.string 'keyword'
      t.string 'radius'

      t.timestamps null: false
    end
  end
end
