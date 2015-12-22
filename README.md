[![Gem Version](https://badge.fury.io/rb/chinese_faker.svg)](http://badge.fury.io/rb/chinese_faker)
[![Code Climate](https://codeclimate.com/github/berniechiu/chinese_faker/badges/gpa.svg)](https://codeclimate.com/github/berniechiu/chinese_faker)
[![Test Coverage](https://codeclimate.com/github/berniechiu/chinese_faker/badges/coverage.svg)](https://codeclimate.com/github/berniechiu/chinese_faker/coverage)
[![Build Status](https://travis-ci.org/berniechiu/chinese_faker.svg?branch=master)](https://travis-ci.org/berniechiu/chinese_faker)

# Chinese Faker

It's a handy gem for generating Chinese fake identity.

## Installation

Add this line to your application's Gemfile:

    gem 'chinese_faker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chinese_faker

## Usage

``` ruby
ChineseFaker::Name.name #=> "劉志偉"
ChineseFaker::Name.name(with_title: true) #=> "李敏醫師"
ChineseFaker::Job.title #=> "軟體工程師"
ChineseFaker::Address.district #=> 桃園市
ChineseFaker::Address.city #=> 新竹市
ChineseFaker::Address.county #=> 苗栗縣
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
