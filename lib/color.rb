class Color
  attr_reader :color
  def initialize(color)
    @color = color
  end
  def color_converter
    colors = {
              'r' => 'red',
              'b' => 'blue',
              'g' => 'green',
              'y' => 'yellow'
            }
            colors[@color]
  end
end
