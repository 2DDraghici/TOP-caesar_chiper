def caesar_cipher(word,number)

    k=0
    number = number-(number/26)*26
    word.each_char { |letter| 
        if letter.ord.between?(32,64)
            word[k] = letter.chr
            k +=1 
            next
        end
        if letter.ord.between?(64,91) && letter.ord+number>90
        letter = 65 + (letter.ord+number -91)
       
         word[k] = letter.chr
         k +=1
         next
        
    elsif letter.ord.between?(97,122) && letter.ord+number>122
        letter = 97 + (letter.ord+number -123)
       
         word[k] = letter.chr
         k +=1
         next
        
        
    end
    if letter.ord.between?(96,123) || letter.ord.between?(65,90) 
        letter = letter.ord+number
        
         word[k] = letter.chr
         k +=1
         next
        
    end
        
             
         }
    
    puts word
       
end
caesar_cipher("What a stringz!",5)