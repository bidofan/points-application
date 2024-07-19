describe Points::Destroy do
  describe '.call' do
    subject(:destroyer) { -> { described_class.call(point) } }

    let!(:point) { create(:point) }

    specify { expect { destroyer.call }.to change(Point, :count).from(1).to(0) }
  end
end
