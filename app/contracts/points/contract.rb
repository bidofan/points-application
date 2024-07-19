module Points
  class Contract < ApplicationContract
    params do
      required(:name).filled(:string)
      required(:longitude).filled(:decimal)
      required(:latitude).filled(:decimal)
    end

    rule(:name) do
      key.failure(I18n.t('dry_validation.errors.point.rules.name.already_exists')) if already_exists?(values[:name])
    end

    private

    def already_exists?(value)
      Point.exists?(name: value)
    end
  end
end
