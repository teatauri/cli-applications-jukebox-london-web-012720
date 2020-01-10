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
    user = gets.chomp
    h = {}
    songs.each.with_index(1) do |song, i|
      hash.merge!("#{i}" => "#{song}")
    end
    h.find { |k, v| puts "#{v}" if user == k || user == v }
    if h.any? { |k, v| user == k || user == v } == false
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  play(songs)
end