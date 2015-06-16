# encoding: utf-8
module ChineseFaker
  class Job < Base
    class << self
      def title; fetch('job.title'); end
    end
  end
end
