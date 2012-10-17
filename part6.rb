class Numeric
  @@currencies = {'dollar' => 1, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  def in(currency)
    singular_currency = currency.to_s.gsub(/s$/, '')
    self / @@currencies[singular_currency]
  end
end

class String
  def palindrome?
  letters = self.downcase.scan(/\w/)
  letters == letters.reverse
end
end

module Enumerable
  def palindrome?
    self.to_a == self.to_a.reverse
  end
end
puts 10.euros.in(:rupees)
puts 5.dollar.in(:euro)
puts 1.dollar.in(:euro)
puts 1.euro.in(:dollar)
puts "anana".palindrome?
puts "foo".palindrome?
puts [1, 2, 3, 2, 1].palindrome?