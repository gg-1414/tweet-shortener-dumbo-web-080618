require 'pry'

def dictionary 
dictionary = {
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

def word_substituter(tweet)
  tweet.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else 
      word
    end 
  end.join(" ")
end 

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else 
    tweet
  end 
end 

def shortened_tweet_truncator(tweet)
  truncated_tweet = tweet[0..139] 
  truncated_tweet << " ..."
  truncated_tweet
end






