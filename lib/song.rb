require "pry"

# Create a Song class.
class Song

# Create a class variable count to keep track of the new songs that are created from the Song class    
    @@count = 0
    @@genres = []
    @@artists = []

# Getter and setter for the three attributes too.
    attr_accessor :name, :artist, :genre


# Define the Song class such that an individual song is initialized with a name, artist and genre.
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

# Write a class method .count that returns the total number of songs created.

    def self.count
        @@count
    end 

# Write a class method .genres that returns an array of all the genres of existing songs.
# This array contains only unique genres.
# Initialize method should add @genre to @@genres array and control for duplicates in genre method.

    def self.genres
        genres_unique = @@genres.uniq 
        return genres_unique
    end

# Write a class method .artists that returns an array of all the artists
# This array contains only unique songs

    def self.artists
        artists_unique = @@artists.uniq
        return artists_unique
    end

# Write a class method .genre_count that returns a hash in which the keys are the names of each genre
# each genre name key points to a value that is a number of songs that has that genre.

    def self.genre_count
        genre_count = Hash.new(0)
        @@genres.each { |word| genre_count[word] += 1 } 
        return genre_count
    end

# Write a class method .artist_count that returns a hash with artists for keys and number of songs per
# artist as the values.

    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each { |word| artist_count[word] += 1 }
        return artist_count
    end
end