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