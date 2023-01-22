class Client
  def initialize(factory)
    @factory = factory
  end

  def call
    puts "Creating an GUI with #{window.print} and #{scroll_bar.roll}"
  end

  private

  def window
    @factory.create_window
  end

  def scroll_bar
    @factory.create_scroll_bar
  end
end
