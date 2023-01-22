# Product's interface

module Window
  class Base
    class NoImplementedError < StandardError
    end

    def print
      raise NoImplementedError, "#{self.class} has not implemented method #{__method__}"
    end
  end
end
