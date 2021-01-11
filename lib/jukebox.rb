# Add your code here
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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.strip
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  user_input_as_int = user_input.to_i

  if songs.include? user_input
    puts "Playing #{user_input}"
  elsif user_input_as_int != 0 and (user_input_as_int - 1) <= songs.length()
    idx = user_input_as_int - 1
    song = songs[idx]
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, idx|
    trackNum = (idx + 1).to_s
    puts "#{trackNum}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  while user_input != "exit" do
    if user_input == "help"
      help
      puts "Please enter a command:"
      user_input = gets.strip
    end
    if user_input == "list"
      list(songs)
      puts "Please enter a command:"
      user_input = gets.strip
    end
    if user_input == "play"
      play(songs)
      puts "Please enter a command:"
      user_input = gets.strip
    end
  end
  exit_jukebox
end
