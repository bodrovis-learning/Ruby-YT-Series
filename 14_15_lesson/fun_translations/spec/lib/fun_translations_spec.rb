RSpec.describe FunTranslations do
  specify '.client' do
    expect(
      described_class.client
    ).to be_an_instance_of(described_class::Client)
  end
end