# Concrete factory

require_relative 'base_widget'
require_relative '../scroll_bar/pm'
require_relative '../window/pm'

module Factory
  class PmWidget < BaseWidget
    def initialize; end

    def create_scroll_bar
      ::ScrollBar::Pm.new
    end

    def create_window
      ::Window::Pm.new
    end
  end
end
