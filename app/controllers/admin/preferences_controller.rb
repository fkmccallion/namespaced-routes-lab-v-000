class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.first_or_create(song_sort_order: "ASC", artist_sort_order: "ASC", allow_create_songs: true, allow_create_artists: true)
  end

  def edit
    @preference = Preference.find_by(id: params[:id])
  end

end
