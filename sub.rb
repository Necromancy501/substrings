require 'set'

def substrings (text, dictionary=[])
   dictionary.reduce (Hash.new(0)) do |result, entry|
    text.split(" ").each do |word|
      set_sub = Set.new 
      word = word.tr('^a-zA-Z', "").downcase
      for i in 0...(word.length) do
        for k in 0...(word.length) do
          if word[i..k] == entry
            set_sub.add(entry)
          end
        end
      end
      set_sub.each { |to_hash| result[to_hash] += 1 }
    end
    result
  end


  
  
  
  
  
  
  
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)