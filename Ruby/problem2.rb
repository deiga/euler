class Fixnum
  @@fibo_cache = Hash.new { |h, k| h[k] = k < 2 ? k : h[k-2] + h[k-1] }

  def fibo
    @@fibo_cache[self]
  end
end

# puts (0..500).map { |n| "#{n.to_s.rjust(3, ' ')} => #{n.fibo}" }
(2..500).inject(0) do |result, elem|
  if elem.fibo > 4000000
    p result
    break
  end
  result += elem.fibo.odd? ? 0 : elem.fibo
end
