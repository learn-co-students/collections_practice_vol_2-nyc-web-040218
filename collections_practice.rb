require 'pry'
def begins_with_r(array)
  i = 1

  array.map do |word|
    if i < array.length && word.start_with?("r")
      i += 1
    elsif i = array.length && word.start_with?('r')
      return true
    else
      return false
    end
  end
end

def contain_a(array)
  array.find_all do |word|
    word.include?('a')
  end
end

def first_wa(array)
  array.find do |word|
    if word.to_s.start_with?('wa')
      return word
    end
  end
end


#  ["blake", 1, :hello]

def remove_non_strings(array)
  output = []
  array.each do |item|
    if item.class == String
      output << item
    end
  end
  return output
end

def count_elements(array)
  output = []

  counter = Hash.new(0)
  array.each { |i| counter[i] += 1 }
    counter.map do |key, value|
      output << {:name=>key.values.join(), :count => value}
    end
  return output
end

def merge_data(keys, data)
  # If keys[index][:first_name] == data[index].keys[index], do keys[index][:first_name] = data[0]["first_name"]
  # keys = [{:first_name=>"blake"}, {:first_name=>"ashley"}]
  # data = [ {"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
  #         "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"} } ]

  output = keys
  i = 0

  while i < keys.length
    data.each do |items|
      items.each do |name, attributes|
        if keys[i].values.join() == name
          attributes.each do |key, value|
            output[i][key] = value
          end
        end
      end
    end
    i+=1
  end
  return output
end

def find_cool(hash_array)

  hash_array.each do |hash|
    hash.each do |key, value|
      if key == "cool" || value == "cool"
        return [hash]
      end
    end
  end
end

def organize_schools(schools)
#Given:
# { {"flatiron school bk" => {:location => "NYC"},
#    "flatiron school" => {:location => "NYC"},
#    "dev boot camp" => {:location => "SF"},
#    "dev boot camp chicago" => {:location => "Chicago"},
#    "general assembly" => {:location => "NYC"},
#    "Hack Reactor" => {:location => "SF"}  } }

#Expecting
#  {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#   "SF"=>["dev boot camp", "Hack Reactor"],
#   "Chicago"=>["dev boot camp chicago"]}

# {"location" => [school_names]}

output = {}
schools_array = []

    schools.each do |school_name, location_hash|
      location_hash.each do |key, location|
        #binding.pry
        if location == schools[school_name].values.join()
          if output[location] == nil
            output[location] = [school_name]
          else
            output[location] << school_name
          end
        end
      end
    end
    return output

end
