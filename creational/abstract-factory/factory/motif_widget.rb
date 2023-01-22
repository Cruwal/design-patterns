# Concrete factory

require_relative 'base_widget'
require_relative '../scroll_bar/motif'
require_relative '../window/motif'

module Factory
  class MotifWidget < BaseWidget
    def initialize; end

    def create_scroll_bar
      ::ScrollBar::Motif.new
    end

    def create_window
      ::Window::Motif.new
    end
  end
end
