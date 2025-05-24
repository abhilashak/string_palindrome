# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'str_palindrome'

#################################################################
# This is the test suite for palindrome string checking
#    The test cases are written by the minitest framework
#    The test cases are written in a way that they can run using:
#        Str.new('s').palindrome
#        Str.new('asesaw').palindrome
#################################################################
class TestStrPalindrome < Minitest::Test
  def set_up
    @empty_string = @string.empty?
    @one_char_string = @string.length == 1
  end

  def test_empty_string
    assert_raises(RuntimeError) do
      Str.new('').palindrome
    end
  end

  def test_one_char_string
    assert_equal Str::IS_PALINDROME, Str.new('s').palindrome
    assert_equal Str::IS_PALINDROME, Str.new('(').palindrome
    assert_equal Str::IS_PALINDROME, Str.new('*').palindrome
    assert_equal Str::IS_PALINDROME, Str.new('1').palindrome
  end

  def test_palindrome_strings
    assert_equal Str::IS_PALINDROME, Str.new('awedewa').palindrome
    assert_equal Str::IS_PALINDROME, Str.new('madam').palindrome
    assert_equal Str::IS_PALINDROME, Str.new('racecar').palindrome
  end

  def test_not_palindrome_strings
    assert_equal Str::IS_NOT_PALINDROME, Str.new('apple').palindrome
    assert_equal Str::IS_NOT_PALINDROME, Str.new('bird').palindrome
    assert_equal Str::IS_NOT_PALINDROME, Str.new('-6').palindrome
  end
end
