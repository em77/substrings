def substrings(string, dictionary)
  final_results = {}
  split_string = string.downcase.split
  split_string.each do |word|
    dictionary.each do |dic_word|
      if word.include? dic_word
        if final_results[dic_word].nil?
          count = 1
        else
          count = final_results[dic_word] + 1
        end
        result = {dic_word => count}
        final_results.merge!(result)
      end
    end
  end
  final_results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
  "own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)