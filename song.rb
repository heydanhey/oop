# Song Class

class Song
  attr_accessor :title, :artist, :duration, :lyrics
  
  def initialize(title, artist, duration, lyrics)
    @title = title
    @artist = artist
    @duration = duration
    @lyrics = lyrics
  end
  
  def play
    puts "*** Now Playing '#{title}' by '#{artist}':"
    `say #{@lyrics}`
    # puts lyrics #I was programming in the c9 enviroment
    puts "----------------"
  end
  
  def friendly_duration
    minutes = duration / 60
    seconds = duration % 60
    return "The song is #{minutes} minutes and #{seconds} seconds long."
  end
  
end