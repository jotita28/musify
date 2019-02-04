class SongsController < ApplicationController

    
    def create

        @song = Song.new(song_params)
        @song.playlist_id = params[:playlist_id]

        @song.save

        redirect_to playlists_path
    end

    def destroy
        @playlist_id = params[:playlist_id]
        @song = Song.find(params[:id])
        @song.destroy 

        redirect_to playlist_path(@playlist_id), notice: 'La canción ha sido eliminada!'
        
        
    end
    


    private
    
    def song_params
        params.require(:song).permit(:artist, :name)
      end
    
end
