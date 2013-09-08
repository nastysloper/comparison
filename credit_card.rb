# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
  attr_reader :numbered, :num

  def initialize num
    @num = num
    @numbered = num.to_s.split('')
    throw ArgumentError if numbered.length > 16
    throw ArgumentError if numbered.length < 16
  end
  
  def check_card
    
  end

end
