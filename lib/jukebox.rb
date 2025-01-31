songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
 help = <<-HELP
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
HELP

  puts help
end

def list(songs)
  songs.each_with_index do |song, song_number|
    puts "#{song_number+1}. #{song}"
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  file_to_play= gets.chomp
  if (1..9).to_a.include?(file_to_play.to_i) then puts "Playing #{songs[file_to_play.to_i-1]}"
  elsif songs.include?(file_to_play) then puts "Playing #{file_to_play}"
  else puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run (songs)
  loop do 
    puts "Please enter a command:"
    user_input= gets.chomp
    case user_input
    when "play"
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    when "exit"
      exit_jukebox
      break
    end
  end
end

