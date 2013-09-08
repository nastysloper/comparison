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
    ints = numbered.map { | element | element.to_i }
    doubleds = []
    ints.each_with_index do | element, index |
      if index % 2 == 0
        doubleds << element * 2
      else
        doubleds << element
      end
    end

    
    
    sum = doubleds.reduce(:+)
    p sum
    print "\n"
    if sum % 10 == 0
      puts "Valid!"
    else
      puts "No gud!"
    end
  end

end

my_card = CreditCard.new(1111_1111_1111_1112)
my_card.check_card
