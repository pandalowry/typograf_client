require 'savon'

module TypografClient
  # main class for Request to service
  class Request
    attr_reader :text

    def initialize(text)
      raise ArgumentError unless (text.is_a? String) || !text.empty?
      @text = text
      @client = Savon.client(wsdl: 'http://typograf.artlebedev.ru/webservices/typograf.asmx?WSDL')
      @result = nil
    end

    def result
      @result ||= response.to_s # not object - pure String returns
    end

    private

    def response
      response = @client.call(:process_text, message: { text: text })
      response.body[:process_text_response][:process_text_result]
    end
  end
end
