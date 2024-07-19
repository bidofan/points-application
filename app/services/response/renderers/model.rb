module Response
  module Renderer
    class Model < Response::Renderer::Base
      private

      def json
        resource
      end
    end
  end
end
