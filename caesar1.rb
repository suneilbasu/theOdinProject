def caesarIn(words,shift)
 	alphabet='abcdefghijklmnopqrstuvwxyz.!, '
 	code=""
 	shift=shift.to_i
 	words=words.split""
	for n in words 
		shifted= (alphabet.index(n)+shift)%28
		code.concat(alphabet[shifted])
	end
	return code
end


# caesar('j')
	
demo = 'a test with z'

puts caesarIn(demo,2)