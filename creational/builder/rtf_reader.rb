# The Director class
class RtfReader
  attr_accessor :builder

  def initialize(builder)
    @builder = builder
  end

  # responsible to define the methods that build each part of the product
  # like: build_part_a, build_part_b, build_part_c
  def parse_rtf(text)
    text.each_char do |char|
      case char
      when 'c'
        builder.convert_character(char)
      when 'f'
        builder.convert_font_change(char)
      when 'p'
        builder.convert_paragraph
      end
    end
  end
end
