require "pry"
class Song
attr_accessor :name, :artist, :genre
@@count =0
@@artists=[]
@@genres =[]
#binding.pry
def initialize (name, artist, genres)
@name =name
@artist = artist
@genre= genres
@@count +=1
@@artists << @artist
@@genres << @genre

end

def self.genre_count
hash = Hash.new(0)
@@genres.each   {|k| hash[k] +=1}

hash

end

def self.artist_count
hash= Hash.new(0)
@@artists.each { |k|hash[k] +=1}
hash

end
def self.count
@@count
end
def self.artists
    @@artists.uniq{|x| x}
    end
    def self.genres
        @@genres.uniq{|x| x}
        end
end