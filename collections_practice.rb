# your code goes here
require 'pry'

def begins_with_r(tools)
  r_tools = 0

  tools.each do |tool|
    if tool.start_with?("r")
      r_tools += 1
    end
  end

  if r_tools == tools.length
    return true
  else
    return false
  end
end

def contain_a(elements)
  a_elements = []

  elements.each do |element|
    if element.include?("a")
      a_elements << element
    end
  end

  a_elements
end

def first_wa(elements)
  elements.find {|element| element.to_s.start_with?("wa")}
end

def remove_non_strings(collection)
  collection.map do |item|
    if item.is_a?(String)
      item
    end
  end.compact
end

def count_elements(elements)
  elements_with_count = []

  elements.each do |item|
    original = item
    item[:count] = elements.count(item)
    elements_with_count << item
    elements.delete(original)
  end

  elements_with_count

end

def merge_data(arr1, arr2)
  arr2[0].map do |name, details|
    new_details = {}
    arr1.each do |key|
      key.each do |k, v|
        if name == v
          new_details = key.merge(details)
        end
      end
    end
    new_details
  end
end

def find_cool(hsh1)
  cool_person = []

  hsh1.each do |arr1|
    binding.pry
    arr1.each do |hsh2|
      binding.pry
      hsh2.each do |k, v|
        binding.pry
        if hsh2[:temperature] == "cool"
          cool_person << hsh2
        end
      end
    end
  end

  cool_person
end
