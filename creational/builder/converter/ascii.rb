# ASCII concrect builder class

require_relative 'base'
require_relative '../formats/ascii'

# define the implementation details of each part of the product

module Converter
  class Ascii < Base
    def initialize
      @ascii = Formats::Ascii.new
    end

    def convert_character(char)
      ascii.insert(char.upcase)
    end

    def product
      ascii
    end

    private

    attr_reader :ascii
  end
end
