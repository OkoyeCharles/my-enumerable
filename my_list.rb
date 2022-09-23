# frozen_string_literal: true

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
puts list.filter(&:even?)
