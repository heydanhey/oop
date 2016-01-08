# Runner.rb for the Song List App

require_relative "song_list"
require_relative "song"

# I put the lryrics here because it was annoying to have it in the call
lyrics_1 = "Load up on guns, bring your friends, It's fun to lose and to pretend. She's over bored and self assured Oh no, I know a dirty word"

lyrics_2 = "Lets here it for circuits lines drawn in the earth cut to scramble for ramble little mouse hole to park your new car, and chew off our arms. all the nooses are in it a grizzly frontier we will show this cruel world we were here"

lyrics_3 = "Mary Anne, do you remember the tree by the river, when we were seventeen. Dark canyon wall the call and the answer, and the mare in the pasture pitch black and baring its teeth."

# Create list
list = List.new

# Create songs and add them to the list
list.add_song(Song.new("Smells Like Teen Spirit", "Nirvana", 220, lyrics_1))
list.add_song(Song.new("You Will Never Take Me Alive", "The Paper Chase", 255, lyrics_2))
list.add_song(Song.new("The Tree By The River", "Iron And Wine", 325, lyrics_3))

# Play the second song in the list,
# And also call the individual pieces of info
puts "Here's the lyrics for '#{list.songs[1].title}', by '#{list.songs[1].artist}':" 
list.songs[1].play
puts "----------------"
puts "The song is #{list.songs[1].duration} seconds long."
puts "----------------"
puts

# Display all song titles in my list
puts "Here's a list of all the songs in your library:"
puts list.song_titles
puts "----------------"
puts

# Display friendly_duration
puts "Here's the friendly duration of a song in your list:"
puts list.songs[1].friendly_duration
puts "----------------"
puts

# Play all songs
puts "PLAY ALL SONGS!"
list.play
puts "----------------"
puts

# Shuffle all songs
puts "SHUFFLE ALL SONGS!"
list.shuffle
puts "----------------"
puts

# Print the total Duration of all the songs in your library
puts "The total duration of your song list is #{list.duration.to_s} seconds."
puts "----------------"
puts
