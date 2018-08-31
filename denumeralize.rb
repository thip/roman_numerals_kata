def denumeralize(numerals)
  numeral_table = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000
  }

  numbers = numerals.split('').map { |n| numeral_table[n.to_sym] }
  sum_numbers(numbers)

end

def sum_numbers(numbers)
  return 0 unless numbers.any?
  return numbers[0] if numbers.count == 1

  first, second, *rest = *numbers

  return sum_numbers(rest) + (second - first) if second > first

  sum_numbers([second]+rest) + first
end