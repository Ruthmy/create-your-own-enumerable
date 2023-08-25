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
