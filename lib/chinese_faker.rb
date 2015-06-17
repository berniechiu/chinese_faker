# encoding: utf-8
mydir = File.expand_path(File.dirname(__FILE__))

require 'i18n'
I18n.load_path += Dir[File.join(mydir, 'locales', '*.yml')]
I18n.reload!
I18n.default_locale = "zh-tw"

module ChineseFaker
  class Base
    class << self
      def parse(key, with_title = false)
        parsed = []

        I18n.translate("chinese_faker.#{key}").each do |format|
          name = format.split
          parsed << name.map { |str| fetch("name.#{str[str.index('{') + 1, str.index('}') - 2]}") }
                        .join
        end

        return with_title ? parsed[0] : parsed[1]
      end

      def fetch(key)
        fetched = I18n.translate("chinese_faker.#{key}")
        items = fetched[0].split

        return items[rand(items.length)]
      end
    end
  end
end

require 'chinese_faker/name'
require 'chinese_faker/job'
