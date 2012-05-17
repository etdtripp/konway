# Konway

This gem is (hopefully) useful for generating (and improving the overall quality of) Twitter tweets|twits and Facebook posts.

## Installation

Add this line to your application's Gemfile:

    gem 'konway'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install konway

## Usage

Generate a tweet:

    Konway.tweet

or

    Konway.twitty

or

    Konway.twit

Generate parameters for a Facebook post:

    Konway.facebook_params

or

    Konway.facebunk_params

or

    Konway.fakebook_params

If you need to override parameters in a Facebook post then send them in!

    Konway.facebook_params(:link => 'http://google.com/')
