require_relative 'client'
require_relative 'factory/motif_widget'
require_relative 'factory/pm_widget'

motif_factory = Factory::MotifWidget.new
client = Client.new(motif_factory)

puts "First client:\n"
client.call

pm_factory = Factory::PmWidget.new
client = Client.new(pm_factory)

puts "\nSecond client:\n"
client.call
