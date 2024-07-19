require 'swagger_helper'

describe 'Points API' do
  path '/api/points/{id}' do
    delete 'Deletes a point' do
      tags 'Points'
      consumes 'application/json'
      parameter name: :id, type: :integer, in: :path, required: true, description: 'point id'

      context 'when point is destroyed' do
        let(:point) { create(:point) }
        let(:id) { point.id }

        response '204', 'point is deleted' do
          run_test! { |response| expect(response.status).to eq 204 }
        end
      end
    end
  end
end
