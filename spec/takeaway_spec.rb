require "takeaway"

describe Takeaway do
subject(:takeaway) { described_class.new(menu: menu) }
# by using keyword arguments (colon in menu:), we know what the arguments mean
# without looking up the implementation of the called method:

let(:menu) { double(:menu, print: printed_menu) }
# we are expecting that calling #print method on the doubled menu object will
# return printed_menu
let(:printed_menu) { "Pizza: £15" }

  it "shows menu with dishes and prices" do
    expect(takeaway.print_menu).to eq(printed_menu)

  end
end
