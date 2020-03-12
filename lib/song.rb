class Song

    attr_accessor :name, :artist, :genre, :count
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []

def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
    @@artists << self.artist
    @@genres << self.genre
    @@count += 1
end

def self.genres

genres.uniq!
end

def self.artists
     @@artists.uniq!
end

def self.genres
    @@genres.uniq!
end

def self.count
@@count
end

def self.genre_count
@@genres.each_with_object(Hash.new(0)) {|genre, count| count[genre] += 1}

end

def self.all
    @@all
end

def self.artist_count
    @@artists.each_with_object(Hash.new(0)) {|artist, count| count[artist] += 1}
end
end