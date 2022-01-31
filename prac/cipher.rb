def encrypt(msg, key)
    msg.downcase.split("").each_with_index do |char, i|
        next if msg[i] == " "
        msg[i] = (msg[i].ord + key) > 122 ? (((msg[i].ord + key) % 123) + 97).chr : (msg[i].ord + key).chr
    end
    msg
end

encrypt('hello', 5)