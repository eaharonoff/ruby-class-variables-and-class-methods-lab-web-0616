require 'pry'
class Song
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name,:artist,:genre
  
  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @@genres.sort.each_with_object({}) do |genre, genre_hash| 
      genre_hash[genre] ||= 0
      genre_hash[genre] += 1
    end
  end

  def self.artist_count
    @@artists.sort.each_with_object({}) do |artist, artist_hash| 
      artist_hash[artist] ||= 0
      artist_hash[artist] += 1
    end
  end
end