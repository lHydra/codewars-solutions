def list_squared(m, n)
  result = []
  m.upto(n) do |num|
    divisors = [num]
    1.upto(num.div(2)) do |i|
      divisors << i if num % i == 0
    end
    square = divisors.map { |i| i**2 }.inject(0) { |a, b| a + b }
    result << [num, square]if Math.sqrt(square).denominator == 1
  end
  result
end
