class ListOps
  def self.arrays(array)
    size = 0
    array.each { size += 1 }
    size
  end
  def self.reverser(array)
    reversed = []
    array.each { |item| reversed.unshift(item) }
    reversed
  end
  def self.concatter(origin, added)
    concatted = origin.dup
    added.each { |item| concatted.push(item) }
    concatted
  end
  def self.mapper(array)
    mapped = []
    array.each { |item| mapped.push(yield(item)) }
    mapped
  end
  def self.filterer(array)
    filtered = []
    array.each { |item| filtered.push(item) if yield(item) }
    filtered
  end
  def self.sum_reducer(array)
    sum = 0
    array.each { |item| sum += item }
    sum
  end
  def self.factorial_reducer(array)
    factorial = 1
    array.each { |item| factorial *= item }
    factorial
  end
end