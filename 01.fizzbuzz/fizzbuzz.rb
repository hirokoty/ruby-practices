def fizzbuzz(min:, max:, div1:, div2:)
  errors = []
  errors << "範囲が不正です" if max < min
  errors << "0で割ることはできません" if [div1, div2].include?(0)
  return puts(errors) unless errors.empty?

  both = div1.lcm(div2)
  range = min..max
  range.each do |num|
    case
    when num % both == 0 then puts "FizzBuzz"
    when num % div1 == 0 then puts "Fizz"
    when num % div2 == 0 then puts "Buzz"
    else  puts "#{num}"
    end
  end
end

fizzbuzz(min: 1, max: 20, div1: 3, div2: 5)
#引数の数値を変えて実行することも、できるようにしてみました

