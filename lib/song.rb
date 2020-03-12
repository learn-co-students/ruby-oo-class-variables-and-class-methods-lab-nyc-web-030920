# require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)

        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist

    end


    def self.count
        @@count
    end

    def self.genres
        genres = @@genres.uniq
    end

    def self.artists
        artists = @@artists.uniq
    end

    def self.genre_count #have to use self. in order for it to be a class method
        
        genre_count = Hash.new

        @@genres.each do |genre|
            if genre_count.has_key?(genre)
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end

        genre_count

    end

    def self.artist_count #have to use self. in order for it to be a class method
        
        artist_count = Hash.new

        @@artists.each do |artist|
            if artist_count.has_key?(artist)
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end

        artist_count

    end
    
# binding.pry

end