puts "Please enter a command: "
input = gets.chomp

def help 
  puts "I accept the following commands: "
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 


def list(array)
  i = 1
  array.each_with_index do |item, index|
    array[item] = index
    i += 1
  end 
end 


def play(array)
  puts "Please enter a song name or number: "
  input = gets.chomp 
  if array.include?(input)
    puts "Playing #{input}"
  else 
    puts "Invalid input, please try again"
  end
end 


def exit_jukebox
  puts "Goodbye"
end 

def run(array) 
  help 
  puts "Please enter a command: "
  input = gets.chomp 
  while input != "exit" do
    case input
      when "list"
        list(array) 
      when "play"
        play(array)
      when "help"
        help 
    end 
    break
  end 
  if input == "exit"
    exit_jukebox
  end 
end 
      