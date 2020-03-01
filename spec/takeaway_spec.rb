require "takeaway"

describe Takeaway do
subject(:takeaway) { described_class.new(menu: menu, order: order) }
# by using keyword arguments (colon in menu:), we know what the arguments mean
# without looking up the implementation of the called method:

let(:menu) { double(:menu, print: printed_menu) }
# we are expecting that calling #print method on the doubled menu object will
# return printed_menu
let(:printed_menu) { "Pizza: £15, Burger: £12, Salad: £10" }
# creating a double of #printed_menu expected return

let(:order) { double(:order) }
# creating order object double



let(:dishes) { {Pizza: 1, Burger: 2} }
# creating dishes double which would be a hash with dishes' names as keys and
# quantity as values

  it "shows menu with dishes and prices" do
    expect(takeaway.print_menu).to eq(printed_menu)
  end

  it "can orded some number of several available dishes" do
    expect(order).to receive(:add).twice
    takeaway.place_order(dishes)
  end
end
