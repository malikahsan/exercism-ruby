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