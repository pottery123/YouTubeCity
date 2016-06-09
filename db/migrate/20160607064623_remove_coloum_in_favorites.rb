class RemoveColoumInFavorites < ActiveRecord::Migration
  def change
     remove_column :favorites, :radiut, :string
  end
end
