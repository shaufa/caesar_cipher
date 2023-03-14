class Cipher

  def encrypt(string, shift)
    ciphered = ''
    string.each_char do |v|
      ciphered << if ('a'.ord..'z'.ord).include?(v.ord)
                    (((v.ord + shift - 'a'.ord) % ('a'..'z').count) + 'a'.ord).chr
                  elsif ('A'.ord..'Z'.ord).include?(v.ord)
                    (((v.ord + shift - 'A'.ord) % ('A'..'Z').count) + 'A'.ord).chr
                  else
                    v
                  end
    end
    ciphered
  end
end

print "What do you want to cipher?"
string = gets.chomp
print "What's the shift step?"
shift_by = gets.chomp.to_i
puts Cipher.new.encrypt(string, shift_by)