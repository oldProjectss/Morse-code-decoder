# decode one character
def decode_char(char)
  if char == '.-'
    'A'
  elsif char == '-...'
    'B'
  elsif char == '-.-.'
    'C'
  elsif char == '-..'
    'D'
  elsif char == '.'
    'E'
  elsif char == '..-.'
    'F'
  elsif char == '--.'
    'G'
  elsif char == '....'
    'H'
  elsif char == '..'
    'I'
  elsif char == '.---'
    'J'
  elsif char == '-.-'
    'K'
  elsif char == '.-..'
    'L'
  elsif char == '--'
    'M'
  elsif char == '-.'
    'N'
  elsif char == '---'
    'O'
  elsif char == '.--.'
    'P'
  elsif char == '--.-'
    'Q'
  elsif char == '.-.'
    'R'
  elsif char == '...'
    'S'
  elsif char == '-'
    'T'
  elsif char == '..-'
    'U'
  elsif char == '...-'
    'V'
  elsif char == '.--'
    'W'
  elsif char == '-..-'
    'X'
  elsif char == '-.--'
    'Y'
  elsif char == '--..'
    'Z'
  end
end

# for testing the decode_char method
puts(decode_char('.-'))

# decode a word
def decode_word(word)
  decoded = ''
  word.split.each do
    |letter|
    decoded += decode_char(letter)
  end
  decoded
end

# for testing the decode_word method
puts decode_word('-- -.--')

# decode the entire message
def decode(word)
  decoded = ''
  word.split('  ').each do
    |words|
    decoded += "#{decode_word(words)} "
  end
  decoded
end
  
# for testing the decode method
puts decode('-- -.--   -. .- -- .')
 puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

