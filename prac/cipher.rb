def caesar_cipher(string, i)
  new_word = ''
  string.each_char do |i|
    i.to_i.times do
      if (i == 'z')
        i = 'a'
        next
      end
      i.next!
      new_word += i
    end
    puts new_word
  end
  
end

caesar_cipher('hekk', 2)