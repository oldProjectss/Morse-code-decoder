# decode one character
def decode_char(char)
  codes = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  codes[char]
end

# decode a word
def decode_word(word)
  decoded = ''
  word.split.each do |letter|
    decoded += decode_char(letter)
  end
  decoded
end

# decode the entire message
def decode(word)
  decoded = ''
  word.split('  ').each do |words|
    decoded += "#{decode_word(words)} "
  end
  decoded
end

puts 'Enter a message to decode!'
message = gets.chomp
puts decode(message)
