require 'pry'
# your code goes here
def begins_with_r(array)
  array.each do |el|
    split_el = el.split("")
    if split_el[0] != "r"
      return false 
    end
  end
  true
end

def contain_a(array)
  answer = []
  array.each do |el|
    split_el = el.split("")
    if split_el.include?("a")
      answer << el
    end
  end
  answer
end

def first_wa(array)
  array.each do |el|
    if el.is_a? Symbol
      str_el = el.to_s 
      str_el = str_el.split("")
      str_el.each_with_index do |letter, idx|
        if letter == "w" && str_el[idx + 1] == "a"
          return el
        end
      end
    else
      str_el = el.to_s 
      str_el = str_el.split("")
      str_el.each_with_index do |letter, idx|
        if letter == "w" && str_el[idx + 1] == "a"
          return el
        end
      end
    end
  end
end

def remove_non_strings(arr)
  answer = []
  arr.each do |el|
    if el.is_a? String
      answer << el 
    end
  end
  answer
end

def count_elements(arr)
  answer = []
  counter = 0
  arr.each do |el|
    arr.each do |el2|
      if el == el2
        counter += 1 
      end
    end
    answer << {:name => el.values[0], :count => counter}
    counter = 0
  end
  answer.uniq
end

def merge_data(keys, data)
  answer_helper = Hash.new
  answer = []
  keys.each_with_index do |el, i|
    name = el[:first_name]
    data.each do |person|
      if person[name]
        merged_person = person[name]
        merged_person[:first_name] = name
        answer << merged_person
      end
    end
  end
  answer
end

def find_cool(array)
  answer = []
  array.each do |el|
    el.each do |key, value|
      if value == "cool"
        answer << el
      end
    end
  end
  answer
end

def organize_schools(hash)
  organized_schools = Hash.new
  hash.each do |key, value|
    value.each do |key2, location|
      organized_schools[location] = []
    end
  end
  hash.each do |key, value|
    organized_schools[value.values[0]] << key
  end
  organized_schools
end