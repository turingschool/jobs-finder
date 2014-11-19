module Jobs
  class EchoStore
    def store(category, jobs)
      jobs.each_with_index do |job, index|
        output = "REC #{index}: #{category}: #{job.title}"
        puts output
      end
    end
  end
end
