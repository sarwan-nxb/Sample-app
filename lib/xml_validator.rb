# module Xml
class XmlValidator
  def self.valid?(data=nil)
    data = parsed_data(data)
    if data.errors.empty?
      puts 'no error, XML is valid'
    else
      puts 'InValid XML parsed!'
    end
  end

  def self.parsed_data content = nil
    content = if content.nil?
      <<-EOXML
        <root>
          <open>foo
            <closed>bar</closed>
          <open>
            <test>testing</test>
          </open>
        </root>
      EOXML
    end
    data  = Nokogiri::XML content
    data
  end
end