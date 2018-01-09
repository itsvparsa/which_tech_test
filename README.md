# Installation (MacOS)

1. Download or clone the repo
2. Navigate to the relevant directory
3. Install some prerequisities
4. Install [Chrome](https://www.google.com/intl/en_uk/chrome/browser/desktop/index.html)
5. Install homebrew (if you don't have it already) via the instructions at [brew.sh](http://brew.sh/)
6. Install [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/) `brew install chromedriver` or you can download it from other sources and configure the path correcly.
7. Install ruby `brew install rbenv && brew install ruby-build` Or download it from (https://www.ruby-lang.org/en/downloads/)
8. Install bundler `gem install bundler`
9. Install the gems `bundle install`

# Running the tests

1. Navigate to the base directory
2. Run `cucumber` command to execute all tests

Note: I have used Windows 10 to test locally using FireFox browser (need to download and configure the geckodriver path correctly) so I am assuming it should work well in chrome on Mac.

Before executing the tests on chrome browser make sure change the default driver to :chrome here in the path => features/support/drivers.rb
