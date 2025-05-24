
# Palindrome Checker

## Description

The method `palindrome` checks whether the given string is a palindrome. A **palindrome** is a word that reads the same forwards and backwards.

### Examples:

* `apple` → false
* `sky` → false
* `madam` → true

## Example Usage

```ruby
Str.new('s').palindrome         # => "The string is a palindrome"
Str.new('ss').palindrome        # => "The string is a palindrome"
Str.new('ass').palindrome       # => "The string is not a palindrome"
Str.new('ases').palindrome      # => "The string is not a palindrome"
Str.new('asesaw').palindrome    # => "The string is not a palindrome"
Str.new('wasesaw').palindrome   # => "The string is a palindrome"
Str.new('wasesawx').palindrome  # => "The string is not a palindrome"
Str.new('xwasesawx').palindrome # => "The string is a palindrome"
```

---
