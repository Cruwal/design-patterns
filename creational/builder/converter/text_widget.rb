# TextWidget concrect builder class

require_relative 'base'
require_relative '../formats/text_widget'

# define the implementation details of each part of the product

module Converter
  class TextWidget < Base
    def initialize
      @text_widget = Formats::TextWidget.new
    end

    def convert_character(char)
      text_widget.add("#{char}!")
    end

    def convert_font_change(font)
      text_widget.add("#{font}!")
    end

    def convert_paragraph
      text_widget.add('!')
    end

    def product
      text_widget
    end

    private

    attr_reader :text_widget
  end
end
