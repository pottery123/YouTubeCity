class AddAttributesToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :lat, :string
    add_column :favorites, :lng, :string
    add_column :favorites, :keyword, :string
    add_column :favorites, :radius, :string
  end

end
