# encoding: utf-8
require 'test_helper'

class TestChineseFakerAddress < Test::Unit::TestCase
  def setup
    @tester = ChineseFaker::Address
    @translations = YAML.load_file(File.expand_path('lib/locales/zh-tw.yml'))
  end

  def test_address_district
    districts = @translations['zh-tw']['chinese_faker']['address']['district'][0].split
    assert districts.include?(@tester.district)
  end

  def test_address_city
    cities = @translations['zh-tw']['chinese_faker']['address']['city'][0].split
    assert cities.include?(@tester.city)
  end

  def test_address_county
    counties = @translations['zh-tw']['chinese_faker']['address']['county'][0].split
    assert counties.include?(@tester.county)
  end
end
