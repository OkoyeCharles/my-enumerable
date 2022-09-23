require_relative 'my_enumerable'

# A list

class MyList
  include MyEnumerable

  attr_accessor :list

  def initialize(*items)
    @list = items
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

# <MyList: @list=[1, 2, 3, 4]>

# Test #all?

p(list.all? { |e| e < 5 })

p(list.all? { |e| e > 5 })

# Test #any?

p(list.any? { |e| e == 2 })

p(list.any? { |e| e == 5 })

# Test #filter

p(list.filter(&:even?))
# [2, 4]
