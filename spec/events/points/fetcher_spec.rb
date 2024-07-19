describe Points::Fetcher do
  describe '.call' do
    subject(:fetcher) { -> { described_class.call } }

    after { fetcher.call }

    specify { expect(Points::Create).to receive(:call).exactly(6).times }
  end
end
