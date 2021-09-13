=begin
Write your code for the 'Flatten Array' exercise in this file. Make the tests in
`flatten_array_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/flatten-array` directory.
=end

class FlattenArray
  VERSION = 1
  def self.flatten(array)
    return [array] unless array.is_a? Array
    return [] if array.empty?
    first, *rest = *array
    if first.nil?
      flatten(rest)
    else
      flatten(first) + flatten(rest)
    end
  end
end