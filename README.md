# Description:

The method `palindrome` prints the given string is palindrome or not
     apple, -> false
     sky, -> false
     madam, -> true

# Example Usage:

   Str.new('s').palindrome -> "The string is a palindrome"
   Str.new('ss').palindrome -> "The string is a palindrome"
   Str.new('ass').palindrome -> "The string is a not palindrome"
   Str.new('ases').palindrome -> "The string is a not palindrome"
   Str.new('asesaw').palindrome -> "The string is a not palindrome"
   Str.new('wasesaw').palindrome -> "The string is a palindrome"
   Str.new('wasesawx').palindrome -> "The string is a not palindrome"
   Str.new('xwasesawx').palindrome -> "The string is a palindrome"