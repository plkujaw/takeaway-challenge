require "menu"

describe Menu do
  subject(:menu) { described_class.new(dishes) }
  # injecting dishes hash into new menu object

  let(:dishes) do
    { pizza: 15,
      burger: 12,
      salad: 10
    }
  end
  it "has a list of dishes with prices" do
    expect(menu.dishes).to eq(dishes)
    # expecting that dishes paramater of newly created Menu class object will
    # equal dishes hash
  end

  it "prints a list of dishes with prices" do
    printed_menu = "Pizza: £15, Burger: £12, Salad: £10"
    expect(menu.print).to eq(printed_menu)
  end
end
