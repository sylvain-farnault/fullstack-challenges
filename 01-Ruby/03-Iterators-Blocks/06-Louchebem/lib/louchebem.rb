

# NOT DONE



suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"]

def louchebemize_word(word)
  return word if word.size == 1

end

def louchebemize(sentence)
  # TODO: implement your louchebem translator
  sentence.split("\b").map { |word|
    louchebemize_word(word)
  }.join
end
