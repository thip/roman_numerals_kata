def numeralize(number)
  string = ""

  xs, number = extract_numeral("X", 10, number)
  string << xs

  vs, number = extract_numeral("V", 5, number)
  string << vs

  is, number = extract_numeral("I", 1, number)
  string << is
end

def extract_numeral(numeral, value, number)
  string = ""
  count = number/value
  new_number = number%value
  string << numeral*count

  [string, new_number]
end