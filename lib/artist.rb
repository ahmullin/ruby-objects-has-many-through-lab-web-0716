require 'pry'
require_relative './song.rb'
require_relative './genre.rb'

class Artist

attr_accessor :genres
attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_object)
    @songs << song_object
    song_object.artist = self
  end

  def genres
    songs.collect{|song| song.genre}
  end

end

artist = Artist.new("Kanye")
song = Song.new("Gold Digger", Genre.new("rap"))
# binding.pry
