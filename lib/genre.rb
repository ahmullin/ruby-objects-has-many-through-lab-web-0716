class Genre

  attr_reader :name, :songs

  def initialize(name)
    # @name = name
    @name, @songs = name, []
  end

  def artists
    songs.collect{|song| song.artist}.uniq
  end

end
