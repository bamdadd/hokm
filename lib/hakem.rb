require "../lib/decorator"


module Hakem
  #include Decorator
    def hokm(suit)
      @hokm=suit
  end

  def getHokm
    @hokm
  end
end