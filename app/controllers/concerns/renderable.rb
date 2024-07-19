module Renderable
  RESPONSE_ERRORS = :response_errors
  private_constant :RESPONSE_ERRORS

  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound, with: :not_found!

    private

    def api_render(object, options = {})
      render Response::Renderer.call(self, object, action_name, options)
    end

    def not_found!
      i18n_scope = [RESPONSE_ERRORS, :not_found]
      error = i18n.t(:error, i18n_scope)
      render(
        json: {
          error: error,
          message: exception.message
        },
        status: :not_found
      )
    end
  end
end
