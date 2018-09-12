require 'pry'

class Market
  attr_reader :name,
              :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(product)
   @vendors.find_all do |vendor|
     vendor.inventory.include?(product)
   end
  end

  def sorted_item_list
    array = []
    @vendors.each do |vendor|
      array << vendor.inventory.keys
    end
    array.sort.flatten(1).uniq
  end

  def total_inventory
    hash = Hash.new(0)
    @vendors.each do |vendor|
      vendor.inventory.each do |k, v|
        hash[k] += v
      end
    end
    hash
  end

  # def sell(item, quantity)
  #   first_vendor = @vendors.find do |vendor|
  #     vendor.check_stock(item)
  #   end
  #   if first_vendor.inventory[item] <= quantity
  #     first_vendor.inventory[item] = 0
  #     return true
  #   else
  #     return false
  #   end
  #
  #   # elsif first_vendor.inventory > quantity
  #   #   first_vendor.inventory[item] = 0
  #   #   @vendors.find do |vendor|
  #   #     vendor.check_stock(item)
  #   #     false
  #   #     sell
  #   #   end
  #   # end
  # end



end
