# Ar

_(Pronouced: R)_ A find and replace/refactor tool that uses regular expressions

## Installation

Add this line to your application's Gemfile:

    gem 'ar'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ar

## Usage

Simple find and replace within a file

    ar apple banana fruit.txt

Find and replace recursively in a directory

    ar apple banana .

Find and replace using a regular expression (this will capitalize all words that
start with the letter a)

    ar  ' a([^ ]*)' ' A\1' fruit.txt

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
