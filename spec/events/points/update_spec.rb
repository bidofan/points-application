describe Points::Update do
  describe '.call' do
    subject(:updater) { -> { described_class.call(point, params) } }

    let(:params) { attributes_for(:point) }
    let!(:point) { create(:point) }

    specify { expect { updater.call }.to change(point, :name).from(point.name).to(params[:name]) }
    specify { expect { updater.call }.to change(point, :latitude).from(point.latitude).to(params[:latitude]) }
    specify { expect { updater.call }.to change(point, :longitude).from(point.longitude).to(params[:longitude]) }

    context 'when point name already exists' do
      let(:point2) { create(:point) }
      let(:params) { super().merge!(name: point2.name) }

      specify { expect { updater.call }.not_to change(point, :name) }
      specify { expect { updater.call }.not_to change(point, :latitude) }
      specify { expect { updater.call }.not_to change(point, :longitude) }
    end
  end
end
