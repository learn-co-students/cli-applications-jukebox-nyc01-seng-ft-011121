require 'pry'

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

def prompt_user
  puts "Please enter a command: "
end

def get_input
  gets.strip
end

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  input_checker = true 
  songs.each_with_index do |song, index|
    if input.to_i == index + 1
      puts "Playing #{song}"
      input_checker = false
    end
    if input == song 
      puts "Playing #{song}"
      input_checker = false
    end
    end
    if input_checker == true 
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  prompt_user
  input = gets.strip
    
    if input == "help"
      help
      prompt_user
    end

    if input == "play"
      play(songs)
      prompt_user
    end
    
    if input == "list"
      list(songs)
      prompt_user
    end
    
    if input == "help"
      help
      prompt_user
    end
    
    if input == "exit"
      exit_jukebox
    end
end
    
  
  
