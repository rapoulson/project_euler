class Multiples
  
  attr_accessor :top_bound
  def initialize(top_bound)
    @multiples = []
    @top_bound = top_bound
  end

  def find_multiples
    (0...top_bound).each do |n|
      if n % 3 == 0 or n % 5 == 0
        @multiples << n
      end
    end
    sum = @multiples.inject{|sum, x| sum + x}
    puts sum
  end
end

multiple = Multiples.new(1000)
multiple.find_multiples
