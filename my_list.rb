require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*elements)
    @list = elements
  end

  def each(&code_block)
    @list.each(&code_block) if block_given?
  end
end

# Create a new list
list = MyList.new(1, 2, 3, 4)

# Test #all?
p(list.all? { |e| e < 5 })
# output: true

p(list.all? { |e| e > 5 })
# output: false

# Test #any?
p(list.any? { |e| e == 2 })
# output: true

p(list.any? { |e| e == 5 })
# output: false

# Test #filter
p(list.filter(&:even?))
# output: [2, 4]
