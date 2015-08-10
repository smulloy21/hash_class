class MyHash
  define_method(:initialize) do
    @array = []
  end
  define_method(:myStore) do |key, value|
    @key = key
    @value = value
    @array.push([@key, @value])
  end
  define_method(:myFetch) do |find_key|
    @array.each() do |sub_array|
      if sub_array[0] == find_key
        return sub_array[1]
      end
    end
  end
  define_method(:key_exist?) do |find_it|
    new_array = []
    @array.each() do |sub_array|
      new_array.push(sub_array[0])
    end
    if new_array.include?(find_it)
      true
    else
      false
    end
  end
end
