# jQuery Mobile for Rails

This gem adds the jQuery Mobile files to Rails' asset pipeline.

## Gem's jQuery Mobile Version

1.4.4 (gem 1.4.4.1)

## Installation

Add this gem to your Gemfile:

    gem 'jquery_mobile_rails'

This will add jQuery Mobile's javascripts, stylesheets and images to your app. It will also set up the asset pipeline to precompile these assets for production.

Include jquery.mobile (or jquery.mobile.min) in your `application.js` manifest:

    //= require jquery
    //= require jquery_ujs
    //= require jquery.mobile

And the same in your `application.css` manifest:

    *= require_self
    *= require_tree .
    *= require jquery.mobile

__NOTE:__ You should probably remove Turbolinks from your `application.js` manifest, as it likely won't work well with jQuery Mobile.

## Use

I built this gem for using with the Mobylette gem, but it will work with your standalone application, or with any other gem that filters your mobile requests.

Please refer to [jQuery Mobile's documentation](http://demos.jquerymobile.com/1.4.4/) for information on laying out your app and using all of the jQuery Mobile features.

## Example

There is a very simple application inside test/dummy demonstrating basic usage of jQuery Mobile templating.

## Versioning

jQuery Mobile Rails' gem versions will align with jQuery Mobile's version numbering, with the most recent gem always providing the current stable release of jQuery Mobile.

To use an older version, please be sure to reference the proper gem version in your Gemfile. For example, to use 1.3.2:

    gem "jquery_mobile_rails", "1.3.2"

## Pull Requests

Please make sure to follow these steps before submitting any pull requests:

* Copy jQuery Mobile files to `vendor/assets/(javascripts|stylesheets|images)/`
* Remove version number from the filenames
* Run `bundle exec rake jquery_mobile_rails_css_fix`. This will convert the css files to scss and ensure that the image references will properly use Rails' asset pipeline (by using `image-url` instead of `url`).

## References

* [jQuery Mobile Page](http://jquerymobile.com/)
* [Mobylette Gem](https://github.com/tscolari/mobylette)
* [Mobile_fu Gem](https://github.com/brendanlim/mobile-fu)

## Authors

* [Tiago Scolari](https://github.com/tscolari)
* [Dylan Markow](https://github.com/dmarkow)
