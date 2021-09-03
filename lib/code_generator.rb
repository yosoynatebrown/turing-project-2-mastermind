class CodeGenerator
  attr_reader :hidden_code

  def initialize
    @hidden_code = []
  end

def all_possible_codes
  colors = ['r', 'g', 'b', 'y']
  colors.repeated_permutation(4).to_a
end

def hidden_code
  @hidden_code = all_possible_codes.sample
end
end
