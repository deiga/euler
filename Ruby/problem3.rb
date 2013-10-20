target = 600851475143

def eratosthenes(n)
  nums = [0, 0] + (2..n).to_a
  (2..Math.sqrt(n).to_i).each do |i|
    if nums[i].nonzero?
      (i**2..n).step(i) {|m| nums[m] = 0}
    end
  end
  nums.find_all {|m| m.nonzero?}
end

eratosthenes(Math.sqrt(target)).reverse.each do |x|
  if target.modulo(x).zero?
    p x
    break
  end
end
