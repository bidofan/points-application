# frozen_string_literal: true

describe Points::Create do
  describe '.call' do
    subject(:creator) { -> { described_class.call(params) } }

    let(:params) { attributes_for(:point) }

    specify { expect { creator.call }.to change(Point, :count) }

    context 'when note is invalid' do
      before { params.delete(:name) }

      specify { expect { creator.call }.not_to change(Point, :count) }
    end
  end
end
