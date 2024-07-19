module Points
  class UpdateContract < Contract
    option :point

    params do
      optional(:name).filled(:string)
      optional(:latitude).filled(:decimal)
      optional(:longitude).filled(:decimal)
    end

    rule(:name) do
      name = values[:name]
      if name && name_changed?(name) && already_exists?(name)
        key.failure(I18n.t('dry_validation.errors.point.rules.name.already_exists'))
      end
    end

    private

    def name_changed?(value)
      point.name != value
    end
  end
end
