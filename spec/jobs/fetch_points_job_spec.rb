describe FetchPointsJob do
  describe '#perform' do
    subject(:job) { -> { described_class.new.perform } }

    after { job.call }

    specify { expect(Points::Fetcher).to receive(:call).once }
  end
end
