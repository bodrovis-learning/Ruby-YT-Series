# frozen_string_literal: true

module TestClient
  def test_client(token = nil)
    FunTranslations.client token
  end
end
