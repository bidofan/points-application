module ExternalPlatform::Points
  class List < BaseService
    def call
      data = File.read('public/data.json')

      JSON.parse(data)
    end
  end
end
