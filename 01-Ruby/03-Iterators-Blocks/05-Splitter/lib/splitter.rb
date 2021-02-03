def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.
  sized_words = []
  other_words = []
  array.each do |word|
    word.size == size ? sized_words << word : other_words << word
  end
  [sized_words.sort, other_words.sort]
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
  sized_words = []
  other_words = []
  array.each do |word|
    yield(word) ? sized_words << word : other_words << word
  end if block_given?
  [sized_words.sort, other_words.sort]
end
