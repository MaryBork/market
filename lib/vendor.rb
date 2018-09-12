require 'pry'

class Vendor
  attr_reader :name,
              :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item,stocked_amount)
    @inventory[item] += stocked_amount
  end



end
