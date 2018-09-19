class Pub

  attr_reader :name
  attr_accessor :till, :drinks


  def initialize(name)
    @name = name
    @till = 0
    @drinks = []
  end


end
