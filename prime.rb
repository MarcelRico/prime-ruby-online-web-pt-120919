# Note: This method uses the Sieve of Eratosthenes way for caluclating prime numbers

def prime?(num)
  array = (2..num).to_a # Array will be used to as a table of values from 2 to num
  marked_list = [] # marked_list is ultilized to mark composite number when testing for prime
  prime_numbers = [] # prime_numbers holds the prime number values found through test, and is returned at end of method

  array.length.times do |idx| 
    value = array[idx]
    if(!marked_list.include?(value)) # If the current value from Array has not been marked
      prime_numbers << value # Store it in the prime_numbers array

      marked_number = value # marked_number variable is used to keep track of all multiples of prime numbers

      while(marked_number <= num)
        marked_list << marked_number # Store every multiple of value < n in the marked_list array.
        marked_number += value
      end
    end
  end
  return prime_numbers.include?(num) # If the user supplied number(num) is included in the calculated prime_numbers return true, else return false
end