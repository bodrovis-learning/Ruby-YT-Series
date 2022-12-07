# frozen_string_literal: true

RSpec.describe FunTranslations::Error do
  include FunTranslations::Request

  it 'handles error 400' do
    data = {
      error: {
        code: 400,
        message: 'Bad Request: text is missing.'
      }
    }

    stub_request(
      :post,
      'https://api.funtranslations.com/translate/yoda.json'
    ).to_return(
      status: 400, # HTTP error code
      body: JSON.dump(data)
    )

    expect do
      post(
        '/translate/yoda.json',
        test_client,
        text: nil
      )
    end.to raise_error(
      described_class::BadRequest,
      'Bad Request: text is missing.'
    )
  end

  it 'handles error 404' do
    data = {
      error: {
        code: 404,
        message: 'Not Found'
      }
    }

    stub_request(
      :post,
      'https://api.funtranslations.com/translate/fake.json'
    ).to_return(
      status: 404, # HTTP error code
      body: JSON.dump(data)
    )

    expect do
      post(
        '/translate/fake.json',
        test_client,
        text: ''
      )
    end.to raise_error(
      described_class::NotFound,
      'Not Found'
    )
  end

  it 'handles unknown error' do
    data = {
      error: {
        code: 430,
        message: 'Unknown error'
      }
    }

    stub_request(
      :post,
      'https://api.funtranslations.com/translate/yoda.json'
    ).to_return(
      status: 430, # HTTP error code
      body: JSON.dump(data)
    )

    expect do
      post(
        '/translate/yoda.json',
        test_client,
        text: 'text'
      )
    end.to raise_error(described_class, 'Unknown error')
  end
end
