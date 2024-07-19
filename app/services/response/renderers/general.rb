module Response
  module Renderers
    class General
      def self.call(_controller, resource, _action, _options)
        { json: resource }
      end
    end
  end
end
