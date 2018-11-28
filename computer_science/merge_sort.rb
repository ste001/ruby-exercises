def merge (a, b)
  i = 0
  j = 0
  k = 0
  arr = []

  until i == a.length or j == b.length
    if a[i] < b[j]
      arr[k] = a[i]
      i += 1
    else
      arr[k] = b[j]
      j += 1
    end
    k += 1
  end
  arr.concat (i == a.length ? b[j..-1] : a[i..-1])
end

def merge_sort arr
  n = arr.length
  if arr.length < 2
    return arr
  end
  left = arr[0..(n/2 - 1)]
  right = arr[(n/2)..(n-1)]
  left = merge_sort(left)
  right = merge_sort(right)
  merge(left, right)
end

puts merge_sort [50, 24, 69, 38, 2, 59, 96, 12]