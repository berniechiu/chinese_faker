# encoding: utf-8
module ChineseFaker

  class Name
    LAST_NAMES = %w[王 李 張 劉 陳 楊 黃 趙 吳 周 邱 廖 郭 陳 蔡 江 何 蕭 羅 呂 高 彭 朱 
                    詹 胡 簡 沈 施 柯 盧 余 翁 潘 游 魏 顏 方 宋 侯 馮 童]
    FIRST_NAMES = %w[志豪 至明 志偉 冠宇 冠廷 偉 敏 秀英 芳]

    class << self
      def name
        return LAST_NAMES[rand(LAST_NAMES.length)] +
               FIRST_NAMES[rand(FIRST_NAMES.length)]
      end
    end
  end
end