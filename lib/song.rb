class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre
    def initialize(new_name, new_artist, new_genre)
        @name = new_name
        @artist = new_artist
        @genre = new_genre
        @@count += 1
        @@artists << new_artist
        @@genres << new_genre
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
        hash = {}
        @@genres.each do |element|
            if !hash[element]
                hash[element] = 1
            else
                hash[element] += 1
            end
        end

        hash
    end

    def self.artist_count 
        hash = {} 
        @@artists.each do |element|
            if hash[element]
                hash[element] += 1 
            else
                hash[element] = 1
            end
        end
        hash
    end
    
end

