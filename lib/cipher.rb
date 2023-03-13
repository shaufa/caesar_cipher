def caesar_cipher string, shift_by
    ciphered = ""
    string.each_char do |v|
        if ("a".ord.."z".ord).include?(v.ord) 
            ciphered << (((v.ord + shift_by - "a".ord) % ("a".."z").count) + "a".ord).chr
        elsif ("A".ord.."Z".ord).include?(v.ord)
            ciphered << (((v.ord + shift_by - "A".ord) % ("A".."Z").count) + "A".ord).chr
        else 
            ciphered << v
        end
    end
    ciphered
end

print "What do you want to cipher?"
string = gets.chomp
print "What's the shift step?"
shift_by = gets.chomp.to_i

puts caesar_cipher(string, shift_by)