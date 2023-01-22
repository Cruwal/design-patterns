# Product's interface

module ScrollBar
  class Base
    class NoImplementedError < StandardError
    end

    def roll
      raise NoImplementedError, "#{self.class} has not implemented method #{__method__}"
    end
  end
end
