require 'savon'

module TypografClient
  class Request
    attr_reader :text

    def initialize(text)
      raise ArgumentError, 'text argument to typography must be given' if !text.is_a? String || text.empty?
      @text = text
      @client = Savon.client(wsdl: 'http://typograf.artlebedev.ru/webservices/typograf.asmx?WSDL')
      @result = nil
    end   

    def result
      @result ||= get_response.to_s #not Nori object - pure String returns
    end

    private

    def get_response
      response = @client.call(:process_text, message: {text: text})
      response.body[:process_text_response][:process_text_result]
    end
  end
end