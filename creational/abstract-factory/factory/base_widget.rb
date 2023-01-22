# Abstract factory

module Factory
  class BaseWidget
    class NoImplementedError < StandardError
    end

    def create_scroll_bar
      raise NoImplementedError, "#{self.class} has not implemented method #{__method__}"
    end

    def create_window
      raise NoImplementedError, "#{self.class} has not implemented method #{__method__}"
    end
  end
end
