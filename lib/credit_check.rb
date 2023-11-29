# card_number = "5541808923795240"

# # Account number:        5    5    4    1    8    0    8    9    2    3    7    9    5    2    4    0
# # 2x every other digit:  10   5    8    1    16   0    16   9    4    3    14   9    10   2    8    0
# # Summed digits over 10: 1    5    8    1    7    0    7    9    4    3    5    9    1    2    8    0
# # Results summed:        70
# # Divisible by 10?:      70 % 10 == 0

# card_number = "5541808923795240"


# array_card_number = card_number.split("")
# array_card_number.map!{|element| element.to_i}


# array_card_number.select do |element|
  
#      if element.even?
#       element * 2
  
#     end 
# end

# puts array_card_number

# if  70 % 10 == 0
#     puts "The number [card number] is valid!"
# else puts "The number [card number] is invalid!"
# # end

# # # Output
# # ## If it is valid, print "The number [card number] is valid!"
# # ## If it is invalid, print "The number [card number] is invalid!"
#

card_number = "5541808923795240"


def luhn_algorithm(card_number)
  digits = card_number.chars.map(&:to_i)
  #chars turns string into an array, map changes data and (&:to_i) specifies the change to integers. it applies the "to_i" to each element.

  doubled_digits = digits.map.with_index do |digit, index|
    #this part iterates each element in "digits" array and it's index position.
    if index.even?
      doubled = digit * 2
      #finds out of the position of index is even then mult by 2
      doubled > 9 ? doubled - 9 : doubled
      #this is just another way of representing a digit being over 10 and adding it together (ex. 15 = 1 + 5 = 6 is the same as  15 - 9 = 6)
    else
      digit
      #if not, then no change
    end
  end
 

  sum = doubled_digits.sum
  # adds the doubled digits together

  # Output
  if sum % 10 == 0
    #divides the sum of doubled digits by ten (modulo) if clean division( no remainders) then valid, else invalid.
    puts "The number #{card_number} is valid!"
  else
    puts "The number #{card_number} is invalid!"
  end
end

luhn_algorithm(card_number)

class CreditCard

# attr_reader :card_number, :limit

# def initialize(card_number, limit)
#   @card_number = card_number
#   @limit = limit
# end

# def is_valid?
#   digits = @card_number.to_s.chars.map(&:to_i)

#   doubled_digits = digits.map.with_index do |digit, index|
#     if index.even?
#       doubled = digit * 2
#       doubled > 9 ? doubled - 9 : doubled
#     else
#       digit
#     end
#   end
  

#   sum = doubled_digits.sum

#   sum % 10 == 0
# end

# def last_four
#   @card_number.to_s[-4..-1]
# end

# end
