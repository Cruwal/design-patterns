# Tex product class

module Formats
  class Tex
    def initialize
      @tex = []
    end

    def add(char)
      @tex << char
    end

    def read
      @tex.each do |char|
        puts char
      end
    end
  end
end
