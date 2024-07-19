require 'swagger_helper'

describe 'Points API' do
  path '/api/points/{id}' do
    patch 'Updates a point' do
      tags 'Points'
      consumes 'application/json'
      parameter name: :id, in: :path, type: :integer, required: true, description: 'id of point'
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          latitude: { type: :number, format: :double },
          longitude: { type: :number, format: :double }
        }
      }

      context 'when point is updated' do
        let(:point) { create(:point) }
        let(:id) { point.id }
        let(:params) { attributes_for(:point) }

        response '200', 'note updated' do
          run_test! { |response| expect(response.status).to eq 200 }

          example 'application/json', 'ok', {
            data: {
              name: 'Time Square',
              latitude: 42.328392,
              longitude: 31.083293
            }
          }
        end
      end
    end
  end
end
