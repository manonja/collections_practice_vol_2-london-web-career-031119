# your code goes here
def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contain_a(array)
  array.select do |x|
    x.include?("a")
  end 
end

def first_wa(array)
  array.find do |word|
    word[0, 2] == "wa"
  end 
end 

def remove_non_strings(array)
  array.delete_if do |string|
    string.class != String
  end 
end 


def count_elements(array)
  # count how many time same element appear in array
  count = Hash.new(0)
  # collect all elements in array and check which one are duplicate
  array.collect {|element| count[element] +=1 } 
  count.collect do |hash, number|
    hash[:count] = number
  end
  count.keys
end

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|key, value| if i.values[0] == key then merged << i.merge(value) end}}
  merged
end

def find_cool(data)
  data.select {|value| value if value.has_value?("cool")}
end

def organize_schools(schools)
  location_hash = {}
  schools.each do |school, location|
      location.each do |symbol, loc|
        if location_hash[loc] == nil
          location_hash[loc] = [school]
        else
          location_hash[loc] << school
        end
      end
    end
    location_hash
end



