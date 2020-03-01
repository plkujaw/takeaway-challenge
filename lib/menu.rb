class Menu

  attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
  end

  def print
    dishes.map do |item, price|
      "%s: £%s" % [item.to_s.capitalize, price]
      # not sure how "%s: £%.2f" ("%s: £%s") works, but it converts every "item"
      # into a string and everything what is after £ symbol into format of float
      # with two decimal places ("£%s" does the same but without float format)
      # and creates an array of strings which we join at the end to get strings
    end.join(", ")
  end

end
