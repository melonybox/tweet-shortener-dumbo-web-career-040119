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
  
  newList.collect! do |x|
    if dictionary.keys.include?(x.downcase)
      x = dictionary[x.downcase]
    else
      x
    end
  end
  newList.join(" ")
end

def bulk_tweet_shortener(list)
  list.each do |x|
    puts word_substituter(x)
  end
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
end