require 'computer'

describe Computer do

	let(:computer) { Computer.new }

	it 'is called Deep Blue' do
		expect(computer.name).to eq "Deep Blue"
	end

	it 'can make random picks' do
		expect(Computer::CHOICES).to receive(:sample)
		computer.autopick
	end

end