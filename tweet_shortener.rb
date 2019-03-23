# Write your code here.

def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(list)
  newList = list.split(" ")
  
<<<<<<< HEAD
  newList.collect! do |x|
    if dictionary.keys.include?(x.downcase)
      x = dictionary[x.downcase]
    else
      x
    end
  end
  newList.join(" ")
=======
  newList.each do |x|
    if dictionary.keys.include?(x.downcase)
      x = list[x.downcase]
    end
  end
  newWords = newList.join(" ")
  return newWords
>>>>>>> f664d8fff5c97e847a248d94de549f2a4b5aebd0
end

def bulk_tweet_shortener(list)
  list.each do |x|
    puts word_substituter(x)
  end
<<<<<<< HEAD
end

def selective_tweet_shortener(list)
  if list.size > 140
    return word_substituter(list)
  else
    return list
  end
end

def shortened_tweet_truncator(list)
  if list.size > 140
    return list[0..136] + "..."
  else
    return list
  end
=======
>>>>>>> f664d8fff5c97e847a248d94de549f2a4b5aebd0
end