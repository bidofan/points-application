class FetchPointsJob < ApplicationJob
  def perform
    Points::Fetcher.call
  end
end
