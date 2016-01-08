# Song List Class

class List
  attr_reader :songs
  
  def initialize
    @songs = []
  end

  def add_song(song)
    @songs << song
  end
  
  def song_titles
    song_names = []
    @songs.each do |song|
      song_names << song.title
    end
    return song_names
  end
      
  def play #play all songs in list
    @songs.each do |song|
      song.play
    end
  end
  
  def shuffle #play all songs in random order
    @songs.shuffle.each do |song|
      song.play
    end
  end
  
  def duration #return total duration
    total_duration = 0
    @songs.each do |song|
      total_duration = total_duration + song.duration
    end
    return total_duration
  end
  
end