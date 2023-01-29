# ASCII product class

module Formats
  class Ascii
    def initialize
      @ascii = ''
    end

    def insert(char)
      @ascii << char
    end

    def read
      puts @ascii
    end
  end
end
