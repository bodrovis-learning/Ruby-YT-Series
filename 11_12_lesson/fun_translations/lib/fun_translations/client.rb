module FunTranslations
  class Client
    include FunTranslations::Request

    attr_accessor :token

    def initialize(token = nil)
      @token = token
    end

    # endpoint = :yoda, :pirate, :quenya
    def translate(endpoint, text, params = {})
      FunTranslations::Translation.new(
        post(
          "/translate/#{endpoint}.json",
          self,
          { text: text }.merge(params)
        )
      )
    end
  end
end