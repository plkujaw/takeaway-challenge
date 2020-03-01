require "order"

describe Order do
  subject(:order) { described_class.new(menu) }

  let(:menu) { instance_double("Menu") }
  # instance_double = verified double becomes aware of "Menu" class and
  # whats inside

  let(:dishes) do
    {
      pizza: 1,
      burger: 1
    }
  end

  before do
    allow(menu).to receive(:has_dish?).with(:pizza).and_return(true)
    allow(menu).to receive(:has_dish?).with(:burger).and_return(true)
  end

  it "selects several dishes from menu" do
    order.add(:pizza, 1)
    order.add(:burger, 1)
    expect(order.dishes).to eq(dishes)
  end

  it "doesn't allow items to be added that are not on the menu" do
    allow(menu).to receive(:has_dish?).with(:beef).and_return(false)
    expect { order.add(:beef, 2) }.to raise_error "Beef is not on the menu"
  end
end
