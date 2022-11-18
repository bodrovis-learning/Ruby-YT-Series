module FunTranslations
  class Translation
    attr_reader :translated_text, :original_text, :translation, :audio, :speed, :tone

    def initialize(raw_translation)
      if raw_translation.respond_to?(:key?) && raw_translation['translated'].key?('audio')
        @audio = raw_translation['translated']['audio']
      else
        @translated_text = raw_translation['translated']
      end
      @original_text = raw_translation['text']
      @translation = raw_translation['translation']
      @speed = raw_translation['speed']
      @tone = raw_translation['tone']
    end
  end
end