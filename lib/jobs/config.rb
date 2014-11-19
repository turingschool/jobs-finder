require_relative 'echo_store'

module Jobs
  class Config
    def self.job_store
      EchoStore.new
    end
  end
end
