def transform(hash)
    new_hash = {}
    hash.each do |key, value| 
      value.each do |array_element| 
        array_element.downcase!
        new_hash[array_element] = key
      end
    end
    new_hash
end

#arrayHash = {2 => ["D","G"]}
 #a variable to hold the number
  #go through the array and hold those values
  #put back together each string with its number (in lower case) with a rocket
