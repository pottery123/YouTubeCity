class ChangeRadiusNameInFavorites < ActiveRecord::Migration
  def change
      add_column :favorites, :radius, :string
  end
end
