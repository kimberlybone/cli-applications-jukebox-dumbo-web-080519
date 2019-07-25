puts "Please enter a command: "
input = gets.chomp

def help 
  puts "I accept the following commands: "
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 


def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index +1}. #{item}"
  end 
end 


def play(songs)
  puts "Please enter a song name or number: "
  input = gets.chomp 
  if songs.include?(input.to_i)
    puts "Playing #{input.to_i}"
  else 
    puts "Invalid input, please try again"
  end
end 


def exit_jukebox
  puts "Goodbye"
end 

def run(songs) 
  help 
  puts "Please enter a command: "
  input = gets.chomp 
  while input != "exit" do
    case input
      when "list"
        list(songs) 
      when "play"
        play(songs)
      when "help"
        help 
      when "exit"
        exit_jukebox
    end 
    break
  end 
  #if input == "exit"
    #exit_jukebox
  end 
end 
      