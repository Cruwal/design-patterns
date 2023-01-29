# TextWidget product class

module Formats
  class TextWidget
    def initialize
      @text_widget = []
    end

    def add(char)
      @text_widget << char
    end

    def read
      @text_widget.each do |char|
        puts char
      end
    end
  end
end
