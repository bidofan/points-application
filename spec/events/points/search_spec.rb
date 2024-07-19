describe Points::Search do
  describe '.call' do
    subject(:searcher) { described_class.call(params) }

    let(:point1) { create(:point, name: 'Big Ben') }
    let(:point2) { create(:point, name: 'Big Bon') }
    let(:params) { { query: query } }

    context 'when query is "Ben"' do
      let(:query) { 'Ben' }

      it { is_expected.to include(point1) }
      it { is_expected.not_to include(point2) }
    end

    context 'when query is "Bon"' do
      let(:query) { 'Bon' }

      it { is_expected.to include(point2) }
      it { is_expected.not_to include(point1) }
    end

    context 'when query is not provided' do
      let(:params) { {} }

      it { is_expected.to include(point1) }
      it { is_expected.to include(point2) }
    end
  end
end
