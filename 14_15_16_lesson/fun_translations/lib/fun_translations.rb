# frozen_string_literal: true

require 'faraday'
require 'json'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup

module FunTranslations
  def self.client(token = nil)
    FunTranslations::Client.new token
  end
end
