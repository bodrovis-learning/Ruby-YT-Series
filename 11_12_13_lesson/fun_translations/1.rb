require 'fun_translations'

begin
  client = FunTranslations.client('1231231231sdfsdfsdf')
rescue FunTranslations::Error => e
  puts "unknown exception!"
  puts e.inspect
rescue => e
  puts e.class.name
  puts e.message
end

result = client.translate :pirate, "Hello sir!"
puts result.translated_text