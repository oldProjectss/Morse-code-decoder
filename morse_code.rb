def decode_char(char)
    if char == '.-'
        "A"
    elsif char == '-...'
        "B"
    elsif char == '-.-.'
        "C"
    elsif char == '-..'
        "D"
    elsif char == '.'
        "E"
    elsif char == '..-.'
        "F"
    elsif char == '--.'
        "G"
    elsif char == '....'
        "H"
    elsif char == '..'
        "I"
    elsif char == '.---'
        "J"
    elsif char == '-.-'
        "K"
    elsif char == '.-..'
        "L"
    elsif char == '--'
        "M"
    elsif char == '-.'
        "N"
    elsif char == '---'
        "O"
    elsif char == '.--.'
        "P"
    elsif char == '--.-'
        "Q"
    elsif char == '.-.'
        "R"
    elsif char == '...'
        "S"
    elsif char == '-'
        "T"
    elsif char == '..-'
        "U"
    elsif char == '...-'
        "V"
    elsif char == '.--'
        "W"
    elsif char == '-..-'
        "X"
    elsif char == '-.--'
        "Y"
    elsif char == '--..'
        "Z"
    else
        "Invalide morse code"
    end
    end
    puts(decode_char(".-"))
