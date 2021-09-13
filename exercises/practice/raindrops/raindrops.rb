class Raindrops
  @@keys = {3 => "Pling", 5 => "Plang", 7 => "Plong"}
  def self.convert(number)
    answer = ""
    (1..number).each do |num|
      if number % num == 0
        @@keys[num] ? answer += @@keys[num] : nil
      end
    end
    if answer.empty?
      answer = number.to_s
    else
      answer
    end
  end
end