shifted = "barna".chars.map {|c| c.ord}

ascii = shifted.map {|c| c+5}
puts ascii