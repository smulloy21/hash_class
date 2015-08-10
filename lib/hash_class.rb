class MyHash
  define_method(:initialize) do |key, value|
    @array = []
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
end
