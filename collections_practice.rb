require 'pry'
# your code goes here
def begins_with_r(tools_array)
  count = 0
  tools_array.each {|tool|
  if tool[0].include?('r')
    count +=1
  end}
  count == tools_array.size
end

def contain_a(arg)
  arg.delete_if do |element|
    !element.include?('a')
  end
end

def first_wa(arg)
  arg.each do |element|
    if element[0..1] == 'wa'
      return element
    end
  end
end

def remove_non_strings(arg)
  arg.keep_if do |element|
      element.is_a?(String)
  end
end

def count_elements(array)
  names = []
  new_array =[]
  array.each do |element|
    names << element[:name]
  end
  names.each do |name|
     new_array << {:name => name, :count => names.count(name)}
  end
  new_array.uniq!
end

def merge_data(array_of_first_name_hashes, array_of_other_data_hashes)
  new_array =[]
  array_of_first_name_hashes.collect do |first_name_hash|
    array_of_other_data_hashes[0].each do |other_hash_name, other_hash_info|
      if other_hash_name == first_name_hash[:first_name]
        other_hash_info.each do |trait, value|
          first_name_hash[trait] = value
        end
      end
      new_array << first_name_hash
    end
  end
  new_array.uniq!
end

def find_cool(array_of_hashes)
  array_of_hashes.each do |hash|
    if hash[:temperature] == "cool"
      return [hash]
    end
  end
end

def organize_schools(hash_of_schools_with_info)
  new_hash = {}
  hash_of_schools_with_info.each do |school, hash_of_location|
    if new_hash[hash_of_location[:location]] == nil
      new_hash[hash_of_location[:location]] = []
      new_hash[hash_of_location[:location]] << school
    else
      new_hash[hash_of_location[:location]] << school
    end
  end
  new_hash
end
