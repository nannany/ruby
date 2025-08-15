s = gets.chomp

len = s.length

max = 0

(0...len).each do |i|
  if s[i] == 't'
    (i + 2...len).each do |j|
      if s[j] == 't'
        x = s[i...j + 1].scan('t').length
        t = j - i + 1

        candidate = (x - 2).fdiv(t - 2)
        if candidate > max
          max = candidate
        end
      else
        next
      end
    end
  else
    next
  end
end

puts max
