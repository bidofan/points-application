require 'swagger_helper'

describe 'Points API' do
  path '/api/points' do
    get 'Search for points' do
      tags 'Points'
      consumes 'application/json'
      parameter name: :query, in: :query, type: :string, required: false

      context 'list of notes' do
        let(:query) { nil }

        response '200', 'list of notes' do
          run_test! { |response| expect(response.status).to eq 200 }
        end
      end
    end
  end
end
