# your code goes here
def begins_with_r(array)
    array.all?{|i| i.start_with? "r"}
end

def contain_a(array)
    array.select{|i| i.include? "a" }
end

def first_wa(array)
    array.find{|i| "#{i}".start_with? "wa"}
end

def remove_non_strings(array)
    array.reject{|i| i.class != String}
end

def count_elements(array)
    array.each do |i|
        this_name = i[:name]
        i[:count] = 0

        array.each do |e|
            if this_name == e[:name]
                i[:count] += 1
            end
        end
    end.uniq
end

def merge_data(keys, val)
    masterdata = []

    keys.each do |data1|
        name = data1[:first_name]

        val.each do |data2|
            if data2.has_key?(name)
                complete_data = data2[name]
                complete_data[:first_name] = name
                masterdata.push(complete_data)
            end
        end
    end
    masterdata.compact
end

def find_cool(array)
    all_cool = []

    array.each do |i|
        if i[:temperature] == "cool"
            all_cool.push(i)
        end
    end
    all_cool
end

def organize_schools(hash)
    organized_schools = {}

    hash.each do |name, location_hash|
      location = location_hash[:location]
      if organized_schools[location]
        organized_schools[location] << name
      else
        organized_schools[location] = []
        organized_schools[location] << name
      end
    end
    organized_schools
end