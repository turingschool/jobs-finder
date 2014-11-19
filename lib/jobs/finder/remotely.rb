Bundler.require(:default)
require_relative '../config'

module Jobs
  module Finder
    class Remotely
      include Sidekiq::Worker

      def perform(category = nil)
        fetcher = Jobs::Remotely::Fetcher.new
        if category.nil?
          feeds = Jobs::Remotely::Feed.all
        else
          feeds = {category => Jobs::Remotely::Feed.for(category)}
        end

        feeds.each do |category, url|
          Jobs::Config.job_store.store(category, fetcher.fetch_url(url))
        end
      end
    end
  end
end
