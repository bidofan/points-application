describe PointsQuery do
  describe '#by_name' do
    subject(:searcher) { described_class.new.by_name(query) }

    let(:point1) { create(:point, name: 'Home') }
    let(:point2) { create(:point, name: 'Rome') }

    let(:query) { '' }

    it { is_expected.to include(point1) }
    it { is_expected.to include(point2) }

    context 'when 1 record match' do
      let(:query) { 'Home' }

      it { is_expected.to include(point1) }
    end

    context 'when records not found' do
      let(:query) { 'aiasdghiw' }

      it { is_expected.not_to include(point1) }
      it { is_expected.not_to include(point2) }
    end

    context 'when query is ome' do
      let(:query) { 'ome' }

      it { is_expected.to include(point1) }
      it { is_expected.to include(point2) }
    end
  end
end
