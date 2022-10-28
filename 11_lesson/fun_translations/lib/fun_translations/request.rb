module FunTranslations
  module Request
    include FunTranslations::Connection

    def post(path, params = {})
      # path --> translate/yoda.json
      # params = { text: "Hello my padawan!" }
      connection.post(path, params)
    end
  end
end