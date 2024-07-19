module Points
  class SearchContract < ApplicationContract
    params do
      optional(:query).maybe(:string)
    end
  end
end
