# TEX concrect builder class

require_relative 'base'
require_relative '../formats/tex'

# define the implementation details of each part of the product

module Converter
  class Tex < Base
    def initialize
      @tex = Formats::Tex.new
    end

    def convert_character(char)
      @tex.add(char)
    end

    def convert_font_change(font)
      @tex.add("#{font}_new")
    end

    def convert_paragraph
      @tex.add('.')
    end

    def product
      @tex
    end
  end
end
