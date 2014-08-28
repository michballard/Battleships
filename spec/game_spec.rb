require 'game'


describe Game do 

	let(:game) { Game.new }
	let(:player1) { double :player }
	let(:player2) { double :player }

	it 'should not be initialized with players' do
		expect(game.players).to eq []
	end

	it 'should be able to add players' do
		game.add!(player1)
		expect(game.players).to eq [player1]
	end


	it 'should be able to know, when to start' do
		expect(game).to be_starting
	end

	it "should be able to start, when there are two players" do
		expect(game.starting?).to be true
	end

	it 'should know who is the current player' do
		game.add!(player1)
		game.add!(player2)

		expect(game.current_player).to eq game.players.first
	end

	it 'should know who is the other player' do
		game.add!(player1)
		game.add!(player2)
		expect(game.other_player).to eq game.players.last
	end

	it 'should change turns' do
		player1 = game.current_player
		player2 = game.other_player
		game.change_turns
		expect(game.current_player).to eq player2
	end
end