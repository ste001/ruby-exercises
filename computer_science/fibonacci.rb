def fibs (n)
  if (n == 0)
    ""
  else
    first = 0
    second = 1
    third = second
    total = []
    n.times do
      total.push(first)
      first = second
      second = third
      third = first + second
    end
    total
  end
end

def fibs_rec (ary, n)
  if (n == 0)
    return ary
  end
  if (n == 1)
    ary << 0
    return ary
  end
  if (n == 2)
    ary << 0 << 1
    return ary
  end
  fibs_rec(ary, n-1)
  ary << ary[n-2] + ary[n-3]
  ary
end

puts fibs_rec([], 8)