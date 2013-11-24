# encoding: utf-8
module ChineseFaker

  class Name < Base

    class << self
      def name(opt = { with_title: false })
        parse('name.name', opt[:with_title])
      end

      def first_name; fetch('name.first_name'); end
      def last_name; fetch('name.last_name'); end
    end
  end
end