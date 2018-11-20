class AddSongSortOrderToPreferences < ActiveRecord::Migration
  def change
    add_column :preferences, :song_sort_order, :string
  end
end
