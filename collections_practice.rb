def begins_with_r(tools)
  boo = true
  tools.each { |tool|
    if tool[0] != "r" && tool[0] != "R"
      boo = false
    end
  }
  boo
end

def contain_a(arr)

  return arr.select { |ele|
    ele.include?("a")
  }
end

def first_wa(arr)
  return arr.find { |ele|
    ele[0]=="w" && ele[1]=="a"
  }
end

def remove_non_strings(arr)
  arr.select { |ele|
    ele.is_a?(String)
  }
end

def count_elements(justWhy)
  stepResult = {}
  result = []
  justWhy.each do |ele|
    if !stepResult.has_key?(ele[:name])
      stepResult[ele[:name]] = 1
    else
      stepResult[ele[:name]] += 1
    end
  end
  
  stepResult.each do |name, count|
    result << {name: name, count: count }
  end
  
  
  
  return result
end

def merge_data(a,b)
  result = []
  b[0].each do |key, val|
    a.each do |ele|
      if ele[:first_name] == key
        result << ele.merge(val)
      end
    end
  end
  
  
  return result
end



def find_cool(cool)
  result = []
  
  cool.each do |ele|
    if ele[:temperature] == "cool"
      result << ele
    end
  end
  
  return result
end


def organize_schools(arr)
  result = {}
  arr.each do |key, val|
    if !result.has_key?(val[:location])
      result[val[:location]] = [key]
    else
      result[val[:location]] << key
    end
  end
  
  result
end
