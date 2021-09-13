class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    demiliters = [" ", /\t/, /\n/]
    split_prhase = @phrase.downcase.gsub(/[?!#^*<>()%@`~:;$&.,]/, "").squeeze(" ").strip.split(Regexp.union(demiliters))
    phrase_counts = split_prhase.each_with_object(Hash.new(0)) do |phrase, new_h|
      phrase[phrase.length-1] = '' if phrase[phrase.length-1] == "'"
      phrase[0] = '' if phrase[0] == "'"
      new_h[phrase] += 1  
    end
    phrase_counts
  end
end