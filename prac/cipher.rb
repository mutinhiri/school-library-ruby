shifted = "barna".chars.map {|c| c.ord}

ascii = shifted.map {|c| c+5 }

puts ascii.map {|c| c.chr}.join

def caesar_cipher(str, num)
  ascii = str.chars.map {|c| c.ord}
  shift = ascii.map {}