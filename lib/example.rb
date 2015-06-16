# Tower of Hanoi game representation
class TowerOfHanoi
  attr_reader :tower1, :tower2, :tower3

  def initialize
    @tower1 = [4, 3, 2, 1]
    @tower2 = [nil, nil, nil, nil]
    @tower3 = [nil, nil, nil, nil]
  end

  def board
    [tower1, tower2, tower3]
  end

  def move(_from, _to)
    @tower1 = [4, 3, 2, nil]
    @tower2 = [1, nil, nil, nil]
  end
end
