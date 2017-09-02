class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    artist = file[0]
    song = file[1]
    song = self.new(song)
    self.name = song
    self.artist = artist
    song
  end

  def artist=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
