require "jjkazm_palindrome/version"


module JjkazmPalindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.downcase.gsub(/[^a-z0-9]/, "")
    end
end

class String
  include JjkazmPalindrome
end

class Integer
  include JjkazmPalindrome
end
