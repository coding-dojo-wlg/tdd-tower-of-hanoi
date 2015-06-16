require 'example'

RSpec.describe TowerOfHanoi do
  let(:valid_initial_first_tower) { [4, 3, 2, 1] }
  let(:valid_initial_second_tower) { [nil, nil, nil, nil] }
  let(:valid_initial_third_tower) { [nil, nil, nil, nil] }

  let(:valid_initial_board) do
    [valid_initial_first_tower,
     valid_initial_second_tower,
     valid_initial_third_tower]
  end

  before(:each) do
    @game_of_toh = TowerOfHanoi.new
  end

  it 'the pronged game board is initialized with a tower' do
    expect(@game_of_toh.board).to eq valid_initial_board
  end

  it 'the first tower is created with a length of 4' do
    expect(@game_of_toh.tower1.count).to eq 4
  end

  it 'the second tower is created with a length of 4' do
    expect(@game_of_toh.tower2.count).to eq 4
  end

  it 'the third tower is created with a length of 4' do
    expect(@game_of_toh.tower3.count).to eq 4
  end

  it 'can move a disc from a tower to another' do
    @game_of_toh.move(@game_of_toh.tower1, @game_of_toh.tower2)
    expect(@game_of_toh.tower1).to eq [4, 3, 2, nil]
    expect(@game_of_toh.tower2).to eq [1, nil, nil, nil]
  end

  it 'cannot move a big disc onto a small disc' do
    @game_of_toh.move(@game_of_toh.tower1, @game_of_toh.tower2)
    expect(@game_of_toh.move(@game_of_toh.tower1,
                             @game_of_toh.tower2)).to eq 'illegal move!'
  end
end
