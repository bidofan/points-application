require 'swagger_helper'

describe 'Points API' do
  path '/api/points' do
    post 'Creates a point' do
      tags 'Points'
      consumes 'application/json'
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          latitude: { type: :number, format: :double },
          longitude: { type: :number, format: :double }
        },
        required: %w[name latitude longitude]
      }

      context 'when point is created' do
        let(:params) { attributes_for(:point) }

        response '200', 'point is created' do
          run_test! { |response| expect(response.status).to eq 200 }

          example 'application/json', 'ok', {
            data: {
              name: 'name',
              latitude: 32.111111,
              longitude: 42.111111
            }
          }
        end
      end
    end
  end
end
