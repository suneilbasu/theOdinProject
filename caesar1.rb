def caesarIn(words,shift)
 	alphabet='abcdefghijklmnopqrstuvwxyz '
 	shift=shift.to_i
 	words=words.split""
	for n in words 
		shifted= (alphabet.index(n)+shift)%26
		puts alphabet[shifted]
	end
end


# caesar('j')
	
demo = 'a test with z'

caesarIn(demo,2)