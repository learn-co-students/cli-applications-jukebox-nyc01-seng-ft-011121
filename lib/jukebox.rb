def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |title, index|
    puts "#{index + 1}. #{title}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input.is_a? String 
    puts "Playing #{input}"
    elsif input.is_a? Integer
  puts "Invalid input, please try again"
  end
end

def exit
  puts "Goodbye"
end

def run
  puts "PLease enter a command:"
  input = gets.strip
end