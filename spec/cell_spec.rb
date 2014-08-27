require "cell"

describe Cell do

	let(:cell) { Cell.new     }
  let(:ship) { double :ship }

	it "should initially have content of water" do
		expect(cell.cell_content?).to be nil
	end

	it "should be able to change to contain a ship" do
		expect(cell.ship!(ship)).to be ship
	end

  it "should know if it contains ship" do
    cell.ship!(ship)
    expect(cell.has_ship?).to be true
  end

  	it 'should initially be clear, not containing any hits' do
  		expect(cell.has_hit?).to be false
  	end

  	it 'should be able to register a hit' do
  		cell.hit!
  		expect(cell.has_hit?).to be true
  	end

end