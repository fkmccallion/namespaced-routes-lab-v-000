class AddArtistSortOrderToPreferences < ActiveRecord::Migration
  def change
    add_column :preferences, :artist_sort_order, :string
  end
end
