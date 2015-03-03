require_relative 'gameclass'

describe Player do
	# let(:new_player) { Player.new }

  describe 'initialize' do
  	let(:new_player) { Player.new("Sean", 75)}
  	it "should construct a new player with 2 arguments, a name AND a secret number" do
  		expect(new_player.name).to eql("Sean") && expect(new_player.secret).to eql(75)   
  	end
  end

end