# Sentence utility functions
class SetenceUtilities
  # Reverse the words in a single sentence,
  # keeping any punctuation mark at the end.
  # Does not handle special characters like ", ', etc
  def reverse(string)
    return nil if string.nil?
    result = string.scan(/\b\w+\b/).reverse.join ' '
    last_char = string.chars.last
    result += last_char if /\W/ =~ last_char
    result
  end
end
