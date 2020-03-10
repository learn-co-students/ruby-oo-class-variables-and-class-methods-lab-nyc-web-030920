class Song 
    @@count = 0
    @@artists = []
    @@genres = []
    @@artist_count = {}
    @@genre_count = {}
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << artist
        @@genres << genre

        if !@@genre_count[genre]
            @@genre_count[genre] = 0
        end
        @@genre_count[genre] += 1

        if !@@artist_count[artist]
            @@artist_count[artist] = 0
        end
        @@artist_count[artist] += 1
    end

    def self.count 
        @@count
    end
    def self.artists
        @@artists.to_set.to_a
    end
    def self.genres
        @@genres.to_set.to_a
    end
    def self.genre_count
        @@genre_count
    end
    def self.artist_count
        @@artist_count
    end
end