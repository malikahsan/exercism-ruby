class Change
  class ImpossibleCombinationError < StandardError; end

  class NegativeTargetError < StandardError; end
  
  def self.generate(coins, change)
    return [] if change == 0
    raise NegativeTargetError if change < 0
    raise ImpossibleCombinationError if change < coins.min
    coin_count = 1
    loop do
      coin_combos = coins.repeated_combination(coin_count)
      coin_combos.each { |combo| return combo if combo.sum == change }
      if coin_combos.all? { |combo| combo.sum > change }
        raise ImpossibleCombinationError
      end
      coin_count += 1
    end
  end
end