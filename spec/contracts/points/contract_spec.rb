# frozen_string_literal: true

describe Points::Contract do
  describe '#call' do
    subject { described_class.new.call(params).success? }

    let(:params) { attributes_for(:point) }

    it { is_expected.to eq true }

    context 'when passed without name' do
      before { params.delete(:name) }

      it { is_expected.to eq false }
    end

    context 'when passed without latitude' do
      before { params.delete(:latitude) }

      it { is_expected.to eq false }
    end

    context 'when passed without longitude' do
      before { params.delete(:longitude) }

      it { is_expected.to eq false }
    end
  end
end
