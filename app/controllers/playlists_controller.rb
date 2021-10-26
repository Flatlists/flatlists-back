class PlaylistsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :rescue_notfound
    def index
        render json: Playlist.all
    end
    def show
        selected_playlist = Playlist.find(params[:id])
        render json: selected_playlist, status: 200
    end
    def created
        new_playlist = Playlist.new(update_params)
        if new_playlist.save
            render json: new_playlist, status: :created
        else
            render json: {error: "Validation Error"}
        end
    end
    def update
        selected_playlist = Playlist.find(params[:id])
        selected_playlist.update(update_params)
        render json: selected_playlist, status: 200
    end
    def add_song
        selected_playlist = Playlist.find(params[:id])
        selected_playlist.update(update_params)
        render json: selected_playlist, status: 200
    end
    def destroy
        selected_playlist = Playlist.find(params[:id])
        selected_playlist.destroy
        render json: selected_playlist, status: 200
    end
    private
    def rescue_notfound
        render json: {error: "Playlist ID Invalid, Record Not Found"}, status: :not_found
    end
    def update_params
        params.permit(:title, :song, :rating, :user_id)
    end
end
