# encoding: utf-8
require 'test_helper'

class TestChineseFakerJob < Test::Unit::TestCase
  def setup
    @tester = ChineseFaker::Job
    @translations = YAML.load_file(File.expand_path('lib/locales/zh-tw.yml'))
  end

  def test_job_title
    titles = @translations['zh-tw']['chinese_faker']['job']['title'][0].split
    assert titles.include?(@tester.title)
  end
end
