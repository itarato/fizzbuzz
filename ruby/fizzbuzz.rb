(1..100).each { |i|
  out = ""

  out += "fizz" unless i % 3 > 0
  out += "buzz" unless i % 5 > 0
  out = i if out == ""

  puts out
}