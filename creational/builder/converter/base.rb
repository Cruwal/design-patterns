# Builder class (Interface)

# define the common interface between all the concret builders
# (empty method, so each subclass que define only the nedded ones

module Converter
  class Base
    def convert_character(char); end

    def convert_font_change(font); end

    def convert_paragraph; end
  end
end
