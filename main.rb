def cipher(text, shift)
  alphabet = ("a".."z").to_a
  output = ""

  text.split("").each do |char|
    unless alphabet.include? char.downcase
      output << char
    else
      is_capitalized = (char == char.upcase) ? true : false
      original_letter_index = alphabet.find_index(char.downcase)
      shifted_letter_index = original_letter_index + shift
      shifted_letter_index > 25 ? shifted_letter_index -= 26 : nil
      shifted_letter = alphabet[shifted_letter_index]
      is_capitalized ? output << shifted_letter.upcase : output << shifted_letter
    end
  end

  return output
end

puts cipher("What a string!", 5)