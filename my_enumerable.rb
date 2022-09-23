# frozen_string_literal: true

# contains methods for my_list class
module MyEnumerable
  def all?
    each do |item|
      return false if yield(item) == false
    end
    true
  end

  def any?
    each do |item|
      return true if yield(item) == true
    end
    false
  end

  def filter
    filtered = []
    each do |item|
      filtered << item if yield(item) == true
    end
    filtered
  end
end
