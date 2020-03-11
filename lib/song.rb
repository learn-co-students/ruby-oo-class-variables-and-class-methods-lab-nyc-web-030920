class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << self.genre 
        @@artists << self.artist
    end
    def Song.count
        @@count 
    end
    def Song.genres
      @@genres.uniq
    end
    def Song.artists
        @@artists.uniq
    end
    def Song.genre_count
        hash = {}
        @@genres.each{|genre| hash[genre]= @@genres.count(genre)} 
        hash
    end
    def Song.artist_count
        hash = {}
        @@artists.each{|artist| hash[artist]= @@artists.count(artist)}
        hash 
    end
end
