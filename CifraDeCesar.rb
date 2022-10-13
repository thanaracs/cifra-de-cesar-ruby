# Cifra de cesar ->  Word and key
# for example: word: thainara | key: 3 | result: xkdlqdud

puts "-- CIFRA DE CESAR ---\n\n"
puts "1 - Encrypted \n2 - Descrypted\nInform the Option:"
option = gets.chomp.to_s


unless option == nil
    puts "Inform the word:"
    word = gets.chomp
    
    puts "Inform the key:"
    key = gets.chomp.to_i
end

def encryptedDados(word, key)
    new_word = ""
    word_in_ascii = word.bytes
    
    for i in 0...word.length
        a = word_in_ascii[i]

        # Validando letras minusculas
        if (a >= 65 && a <= 90)
            b = (a + key)

            # Validando a soma caso passe da letra |Z|
            if (b > 90)
                b = (b - 90) + 64 
            end
            new_word += b.chr

        # Validando letras maiusculas
        elsif (a >= 97 && a <= 122) 
            b = (a + key)

            # Validando a soma caso passe da |z|
            if (b > 122)
                b = (b - 122) + 96 
            end
            new_word += b.chr
    
        # Validando Numeros
        elsif (a >= 48 && a <= 57)
            b = (a + key)

            # Validando o número caso passe de |9|
            if ( b > 57)
                b = (b - 57) + 47
            end
            new_word += b.chr
        elsif #validando caso tenha  espaço
            if(a == 32)
            b = "#"
            new_word += b.chr
            end
        else #validando caso tenha caracteres desconhecidos
            b = "!"
            new_word += b.chr 
        end

    end 
    new_word
end

def descrypted(word,key)
    new_word = ""
    word_in_ascii = word.bytes
    
    for i in 0...word.length
        a = word_in_ascii[i]

        # Validando letras minusculas
        if (a >= 65 && a <= 90)
            b = (a + key)

            # Validando a soma caso passe da letra |Z|
            if (b > 90)
                b = (b - 90) + 64 
            end
            new_word += b.chr

        # Validando letras maiusculas
        elsif (a >= 97 && a <= 122) 
            b = (a + key)

            # Validando a soma caso passe da |z|
            if (b > 122)
                b = (b - 122) + 96 
            end
            new_word += b.chr
    
        # Validando Numeros
        elsif (a >= 48 && a <= 57)
            b = (a + key)

            # Validando o número caso passe de |9|
            if ( b > 57)
                b = (b - 57) + 47
            end
            new_word += b.chr
        elsif #validando caso tenha  espaço
            if(a == 32)
            b = "#"
            new_word += b.chr
            end
        else #validando caso tenha caracteres desconhecidos
            b = "!"
            new_word += b.chr 
        end

    end 
    new_word
end

new_word = encryptedDados(word, key)  #DEVE SER CHAMADO ABAIXO DO METODO /FUNCAO

puts "Word encrypted: #{new_word}"
puts "Word inform: #{word}"

