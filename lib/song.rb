require 'pry'

class Song

    attr_accessor :name, :artist, :genre, :count, :genres, :artists

    @@artists = []
    @@count = 0
    @@genres = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end


    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre, count|
            if genre_count.key?(genre)
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end

    def self.artist_count 
        artist_count = {}
        @@artists.each do |artist, count|
            if artist_count.key?(artist)
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end



end # end of class song
