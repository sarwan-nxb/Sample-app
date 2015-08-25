module FreshApi
  class Client
    require 'rest-client'
    def initialize(uri='https://nxb426.freshbooks.com/api/2.1/xml-in',token='8edc16d9989b8947cf91b6d40ad0cd9f')
      @uri = uri
      @token = token
    end

    def list
      xml = <<-XML
              <?xml version="1.0" encoding="utf-8"?><request method="invoice.list"></request>
      XML
      response = RestClient::Request.execute(method: :post,
                                             url: @uri,
                                             user: @token,
                                             password: 'X',
                                             content_type: 'application/xml',
                                             payload: xml
      )
      doc = Nokogiri::XML(response)
      result = Hash.from_xml(doc.to_s)
    end

  end
end