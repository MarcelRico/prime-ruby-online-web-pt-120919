def prime?(user_number)
  array = (2..user_number).to_a
  marked_list = []
  prime_numbers = [] 

  array.length.times do |idx|
    number = array[idx]
    if(!marked_list.include?(number))
      if(number**2 > user_number)
        array.collect do |num|
          if(!marked_list.include?(num))
            prime_numbers << num
          end
        end
        return prime_numbers
      end
      prime_numbers << number
      marked_number = number
      while marked_number <= user_number
        marked_list << marked_number
        marked_number += number
      end
    end
    puts "iteration: #{idx}"
  end

  return prime_numbers
end