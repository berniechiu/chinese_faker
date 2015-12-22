module ChineseFaker
  class Address < Base
    class << self
      def district; fetch('address.district'); end
      def city;     fetch('address.city'); end
      def county;   fetch('address.county'); end
    end
  end
end
