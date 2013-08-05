# encoding: utf-8
module ChineseFaker

  class Job
    TITLES = %w[學生 醫生 軟體工程師 老師 牙醫 律師 外交官 室內設計師 外科醫師 建築師 機師 檢察官]

    class << self
      def title
        return TITLES[rand(TITLES.length)]
      end
    end
  end
end