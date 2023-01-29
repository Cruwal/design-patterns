require_relative 'rtf_reader'
require_relative 'converter/ascii'
require_relative 'converter/tex'
require_relative 'converter/text_widget'

# The client class
# reader (director) can be reused with different builders and the 
# client can ask for the product directly to the convert (concret builder)

ascii_converter = Converter::Ascii.new
reader = RtfReader.new(ascii_converter)

reader.parse_rtf('ccfp')

puts 'ASCII Converter'
ascii_object = ascii_converter.product
ascii_object.read

puts "\nTex Converter"
tex_converter = Converter::Tex.new
reader.builder = tex_converter

reader.parse_rtf('ccfp')

tex_object = tex_converter.product
tex_object.read

puts "\nTextWidget Converter"
text_widget_converter = Converter::TextWidget.new
reader.builder = text_widget_converter

reader.parse_rtf('ccfp')

text_widget_object = text_widget_converter.product
text_widget_object.read
