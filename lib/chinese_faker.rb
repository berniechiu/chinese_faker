# encoding: utf-8

require "./chinese_faker/version"

module ChineseFaker

  module Job
    TITLES = %w[學生 醫生 軟體工程師]

    def self.title
      return TITLES[rand(TITLES.length)]
    end
  end

  module Name
    LAST_NAMES = %w[王 李 張 劉 陳 楊 黃 趙 吳 周 邱 廖 郭]
    FIRST_NAMES = %w[志豪 至明 志偉 冠宇 冠廷 偉 敏 秀英 芳]

    def self.name
      return LAST_NAMES[rand(LAST_NAMES.length)] +
             FIRST_NAMES[rand(FIRST_NAMES.length)]
    end
  end
end
