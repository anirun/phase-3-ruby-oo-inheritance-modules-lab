require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods
  # macros to create setters and getters for :name, as well as a getter for :songs
  attr_accessor :name
  attr_reader :songs
  # initialize class variable @@artists as an empty array
  @@artists = []
  # use initialize method to push each new instantiation into the class var @@artists array
  # initializes an empty array under instance variable @songs for the instantiation of Artist
  def initialize
    super
    @songs = []
  end
# INSTANCE METHODS
  # adds a song to the instance variable @songs, which belongs to the instance created by Artist
  def add_song(song)
    @songs << song
    song.artist = self
  end
  # adds an array of songs to the artist instance
  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
  def self.all
    @@artists
  end
 
  # changes artist name to acceptable parameters (lower case, no spaces)
 
end
