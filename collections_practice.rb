
def sort_array_asc(array)
  array.sort do |a,b|
    a<=>b
  end
end

def sort_array_desc(array)
  array.sort do |a,b|
    if a == b
      0
    elsif a < b
      1
    elsif a > b
      -1
    end
  end
end

def sort_array_char_count(array)
  array.sort {|a,b| a.length<=>b.length}
end

def swap_elements(array)
  if array.length>2
    new_second= array[2]
    new_third= array[1]
    array[1]=new_second
    array[2]=new_third
  end
  array
end

def swap_elements_from_to(array, index, destination_index)
  if index <= array.length-1 && destination_index <= array.length-1
    array.sort do |aindex, destination_index|
      index=1
      destination_index=2
      if array[index] > array[destination_index]
        -1
      elsif array[index] < array[destination_index]
        -1
      end
    end
  end
end


def reverse_array(array)
  array.sort do |a,b|
    if a<b
      1
    elsif a>b
      1
    end
  end
end

def kesha_maker(array)
  array.each do |element|
    element[2] = "$"
  end
end


def find_a(array)
  array.select {|word| word.start_with?("a")}
end

def sum_array(array)
  array.inject(:+)
end

def add_s(array)
  array.map.with_index(0) do |word, index|
    if index<1 || index>1
      "#{word}s"
    else
      word
    end
  end
end
