
require 'pry'

class Song
    #song count
    #song artists
    #song genres
    # genre count (hash showing genre and #)
    #artist count (same idea of a hash)
    @@all_artists = []
    @@all_songs = []
    @@all_genres = []
    @@song_count = 0 



    def initialize(song_name,artist,genre)
        @song_name = song_name
        @artist = artist
        @genre = genre
        @@song_count += 1
        @@all_artists << artist
        @@all_songs << song_name
        @@all_genres << genre

    end
    def self.count
        @@song_count
    end
    def self.artists
        @@all_artists.uniq
    end
    def self.genres
        @@all_genres.uniq
    end
    def self.genres_count
        @@all_genres.each_with_object(Hash.new(0)) do |genre, hash|
            hash[genre] += 1
        end
    end
    def self.artist_count
        @@all_artists.each_with_object(Hash.new(0)) do |genre, hash|
            hash[genre] += 1
        end
    end
end



Song.new("Hooray", "Adam Nowland", "rap")
Song.new("Banger", "Adam Nowland", "rap")
binding.pry
