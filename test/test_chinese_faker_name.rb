# encoding: utf-8
require 'test_helper'

class TestChineseFakerName < Test::Unit::TestCase
  def setup
    @tester = ChineseFaker::Name
    @characters = @tester.name.split('')
    @translations = YAML.load_file(File.expand_path('lib/locales/zh-tw.yml'))
  end

  def test_first_name
    @characters.shift
    first_name = @characters.join('')
    names = @translations['zh-tw']['chinese_faker']['name']['first_name'][0].split
    assert names.include?(first_name)
  end

  def test_last_name
    last_name = @characters.shift
    names = @translations['zh-tw']['chinese_faker']['name']['last_name'][0].split
    assert names.include?(last_name)
  end

  def test_name
    assert @tester.name.match(/(\A\p{Lo}+\z)/)
  end

  def test_name_with_title
    assert @tester.name(with_title: true).match(/(\A\p{Lo}+\z)/)
  end
end
