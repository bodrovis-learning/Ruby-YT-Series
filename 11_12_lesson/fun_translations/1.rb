require 'fun_translations'

client = FunTranslations.client('1231231231sdfsdfsdf')
result = client.translate :pirate, "Hello sir!"
puts result.translated_text