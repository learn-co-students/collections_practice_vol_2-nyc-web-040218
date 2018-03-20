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

def first_wa
  array.find
end