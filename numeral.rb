def numeralize(number)
  numerals = [
    [1000, "M"],
    [900, "CM"],
    [500, "D"],
    [400, "CD"],
    [100, "C"],
    [90, "XC"],
    [50, "L"],
    [40, "XL"],
    [10, "X"],
    [9, "IX"],
    [5, "V"],
    [4, "IV"],
    [1, "I"]
  ]

  extract_numerals(numerals, number)
end

def extract_numerals(numerals, number)
  return "" unless numerals.any?

  head, *tail = *numerals
  (value, numeral) = head

  count = number/value
  return numeral*count << extract_numerals(tail, number%value)
end