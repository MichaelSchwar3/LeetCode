array = [6,7,14,12,11,1]

def my_quicksort(arr)
  return arr if arr.length <=1
  pivot = arr.shift
  left = arr.select{|el| el < pivot}
  right = arr.select{|el| el >= pivot}
  left_sorted = my_quicksort(left)
  right_sorted = my_quicksort(right)
  return left_sorted + [pivot] + right_sorted
end

p my_quicksort(array)

def my_mergesort(arr, &prc)
  prc ||= Proc.new {|a,b| a<=>b}
  return [] if arr.length <1
  mid = arr.length/2
  left = my_mergesort(arr.take(mid), &prc)
  right = my_mergesort(arr.drop(mid), &prc)
  merge(left, right, &prc)
end

def merge(left, right, &prc)
  merged = []
  until left.empty? || right.empty?
    if prc.call(left[0],right[0]) == -1
      merged << left.shift
    else
      merged << right.shift
    end
  end
  merged.concat(left)
  merged.concat(right)
  return merged
end

class Array
  # Write a new `Array#merge_sort` method; it should not modify the
  # array it is called on, but create a new sorted array.
  def merge_sort(&prc)
    prc ||= Proc.new {|a,b| a<=>b}

    return self if size <= 1
    mid = size/2
    l_sorted = self.take(mid).merge_sort(&prc)
    r_sorted = self.drop(mid).merge_sort(&prc)
    Array.merge(l_sorted,r_sorted,&prc)
  end

  private
  def self.merge(left, right, &prc)
    arr = []
    until left.empty? || right.empty?
      if prc.call(left.first,right.first) == -1
        arr << left.shift
      else

        arr << right.shift
      end
    end
    arr.concat(left)
    arr.concat(right)
    arr
  end

end



p array.merge_sort


def bsearch(arr, target)
  return nil if arr.empty?
  mid = arr.length/2
  return mid if arr[mid] == target
  if arr[mid] > target
    return bsearch(arr[0...mid],target)
  else
    result = bsearch(arr[mid+1..-1],target)
    return result.nil? ? nil : (mid + 1) + result
  end
end

array2 = [1,2,3,4,5,6,7,8]
p bsearch(array2, 3)
p bsearch(array2, 2)
p bsearch(array2, 6)
p bsearch(array2, 8)
p bsearch(array2, 10)
