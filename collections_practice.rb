require "pry"
# your code goes here
def begins_with_r (arr)
  arr.all? { |element| element.start_with?('r') }
end

def contain_a (arr)
  collection = []
  arr.collect do |e|
    if e.include?('a')
      collection << e
    end
  end
  collection
end

def first_wa (arr)
  arr[arr.find_index { |e| e.match?('wa') }]
end

def remove_non_strings (arr)
  strings = []
  arr.each do |e|
    if e.is_a? String
      strings << e
    end
  end
  strings
end


def count_elements (arr)
  count_arr = []
  grouped_elements = arr.group_by {|h| h[:name]}
  grouped_elements.each do |name, instances|
  count_arr << {:count => instances.size, :name => name}
  end
  count_arr
end

def merge_data (keys, data)
  merged_data =[]
  keys.each do |h|
    first_name = h[:first_name]
    data.each do |details|
        merged_details = details[first_name]
        merged_details[:first_name] = first_name
        merged_data << merged_details
    end
  end
  merged_data
end

def find_cool (arr)
  cool_array = []
  arr.each do |hash|
    if hash.value?("cool")
      cool_array << hash
    end
  end
  cool_array
end

def organize_schools (arr)
  organized_schools = {}
  arr.each do |school_name, location|
  location_name  = location[:location]
    if organized_schools[location_name] != nil
      organized_schools[location_name] << school_name
    else
      organized_schools[location_name] = []
      organized_schools[location_name] << school_name
    end
  end
  organized_schools
end
