require "test_helper"

class JjkazmPalindromeTest < Minitest::Test
  def test_not_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palidrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctation
    assert "Madam, I'm Adam".palindrome?
  end

  def test_integer_non_palindrome
    assert !12345.palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end

end
