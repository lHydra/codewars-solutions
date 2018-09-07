def validate(n)
  array = n.to_s.split('').map(&:to_i)
  if array.size.even?
    array.each_index do |i|
      array[i] *= 2 if i.even?
      array[i] -= 9 if array[i] > 9
    end
  else
    array.each_index do |i|
      array[i] *= 2 if i.odd?
      array[i] -= 9 if array[i] > 9
    end
  end
  s = array.inject(0) {|sum, x| sum = sum + x}
  n = array.join
  if s % 10 == 0
    puts "#{s % 10} is equal 0, so #{n} is a valid credit card number"
    return true
  else
    puts "#{s % 10} is not equal 0, so #{n} is not a valid credit card number"
    return false
  end
end
