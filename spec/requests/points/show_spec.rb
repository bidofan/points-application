require 'swagger_helper'

describe 'Points API' do
  path '/api/points/{id}' do
    get 'Shows a point' do
      tags 'Points'
      consumes 'application/json'
      parameter name: :id, type: :integer, in: :path, required: true, description: 'id of point'

      context 'when point is retrieved' do
        let(:point) { create(:point) }
        let(:id) { point.id }

        response '200', 'point is retrieved' do
          run_test! { |response| expect(response.status).to eq 200 }
        end
      end
    end
  end
end
