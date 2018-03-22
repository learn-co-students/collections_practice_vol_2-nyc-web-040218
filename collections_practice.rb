def begins_with_r(tools)
  tools.all? do |tool|
    tool.start_with?("r")
  end
end

def contain_a(arr)
  arr.select do |element|
    element.include?("a")
  end
end

def first_wa(arr)
  arr.find do |element|
    element.to_s.start_with?("wa")
  end
end

def remove_non_strings(arr)
  arr.select do |element|
    element.is_a? String
  end
end

def begins_with_r(tools)
  tools.all? do |tool|
    tool.start_with?("r")
  end
end

def contain_a(arr)
  arr.select do |element|
    element.include?("a")
  end
end

def first_wa(arr)
  arr.find do |element|
    element.to_s.start_with?("wa")
  end
end

def remove_non_strings(arr)
  arr.select do |element|
    element.is_a? String
  end
end

def count_elements(arr)
  names_list = get_all_names(arr)
  count_arr = []
  add_names = []

  names_list.each do |name|
    if !add_names.include?(name)
      count_arr << {:name => name, :count => number_of_occurence(names_list, name)}
      add_names.push(name)
    end
  end

  count_arr
end

def get_all_names(array)
  array.map do |person_hash|
    person_hash[:name]
  end
end

def number_of_occurence(arr, ele)
  arr.reduce(0) do |result, current|
    if ele == current
      result += 1
    else
      result
    end
  end
end

def merge_data(keys, data)
  merged_data = keys

  data.each do |user_hash|
    user_hash.each do |user_name, user_bio|
      merged_data.each do |firstname_hash|
        if firstname_hash[:first_name] == user_name
          user_bio.each do |characteristics, value|
            firstname_hash[characteristics] = value
          end
        end
      end
    end
  end

  merged_data
end

def find_cool(cool)
  all_cool_hashes = []

  cool.each do |cool_hash|
    if cool_hash[:temperature] == "cool"
      all_cool_hashes << cool_hash
    end
  end

  all_cool_hashes
end

def organize_schools(schools)
  organized_schools = {}

  schools.each do |school_name, location_info|
    if organized_schools[location_info[:location]] == nil
      organized_schools[location_info[:location]] = [school_name]
    else
      organized_schools[location_info[:location]].push(school_name)
    end
  end

  organized_schools
end
