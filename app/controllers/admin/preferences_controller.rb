class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.first_or_create(song_sort_order: "ASC", artist_sort_order: "ASC", allow_create_songs: true, allow_create_artists: true)
  end

  def edit
    @preference = Preference.find_by(id: params[:id])
  end

  def update
    @preference = Preference.find_by(id: params[:id])
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :artist_sort_order, :song_sort_order)
  end

end
