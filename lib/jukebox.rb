require 'pry'

def help 
  puts "I accept the following commands: "
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.split
    hash = {}
    songs.each.with_index(1) do |song, num|
        hash.merge!("#{num}" => "#{song}")
    end
    hash.find { |num, song|
        puts "#{song}" if input == num || input == song
    }
    if hash.any? { |num, song| 
        input == num || input == song } == false
          puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  play(songs)
end