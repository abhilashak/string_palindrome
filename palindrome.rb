# frozen_string_literal: true

###########################################################################
# The method `palindrome` prints the given string is palindrome or not
#     apple, -> false
#     sky, -> false
#     madam, -> true
# Example:
#   Str.new('s').palindrome -> "The string is a palindrome"
#   Str.new('ss').palindrome -> "The string is a palindrome"
#   Str.new('ass').palindrome -> "The string is a not palindrome"
#   Str.new('ases').palindrome -> "The string is a not palindrome"
#   Str.new('asesaw').palindrome -> "The string is a not palindrome"
#   Str.new('wasesaw').palindrome -> "The string is a palindrome"
#   Str.new('wasesawx').palindrome -> "The string is a not palindrome"
#   Str.new('xwasesawx').palindrome -> "The string is a palindrome"
############################################################################
class Str
  IS_PALINDROME = 'The string is a palindrome'
  IS_NOT_PALINDROME = 'The string is a not palindrome'

  def initialize(string)
    @string = string
    @empty_string = @string.empty?
    @one_char_string = @string.length == 1
  end

  def palindrome
    raise 'Provide a string'  if @empty_string
    return Str::IS_PALINDROME if @one_char_string

    check_with_opposite_pos_and_print
  end

  private

  # This method checks
  #   1. first and last chars of a string are same if not return NOT PALIMDROME
  #   2. if strings are same, those same characters are removed from string and
  #      do a palindrome check again with trimmed string.
  #   This process repeats until we get the string is a palindrome ot not
  def check_with_opposite_pos_and_print
    first_char_pos = 0
    last_char_pos  = @string.length - 1
    return Str::IS_NOT_PALINDROME unless both_char_eql?(first_char_pos, last_char_pos)

    @string = exclude_eq_chars_frm_str(first_char_pos, last_char_pos)
    return Str::IS_PALINDROME if str_len_zero_or_one?

    check_with_opposite_pos_and_print
  end

  # Ex: string: 'assa', result: true, string: 'cvb', result: false
  def both_char_eql?(first_char_pos, last_char_pos)
    @string[first_char_pos] == @string[last_char_pos]
  end

  # Ex: original string: 'assdssa', excluded string: 'ssdss'
  def exclude_eq_chars_frm_str(first_char_pos, last_char_pos)
    @string[(first_char_pos + 1)..(last_char_pos - 1)]
  end

  # length 0 or 1, Ex: '', 's'
  def str_len_zero_or_one?
    @string.length < 2
  end
end
